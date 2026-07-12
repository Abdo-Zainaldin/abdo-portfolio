import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/data/models/portfolio_data.dart';
import 'package:portfolio/data/portfolio_data_source.dart';

part 'portfolio_state.dart';
part 'portfolio_cubit.freezed.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit({required PortfolioDataSource dataSource})
    : _dataSource = dataSource,
      super(const PortfolioState.initial());

  final PortfolioDataSource _dataSource;

  Future<void> loadPortfolio() async {
    // Prevent loading the same data multiple times at once.
    if (state is PortfolioLoading) return;

    emit(const PortfolioState.loading());

    try {
      final portfolioData = await _dataSource.loadPortfolioData();

      emit(PortfolioState.loaded(portfolioData: portfolioData));
    } on PortfolioDataException catch (error) {
      emit(PortfolioState.failure(message: error.message));
    } catch (error) {
      emit(
        PortfolioState.failure(message: 'An unexpected error occurred: $error'),
      );
    }
  }
}
