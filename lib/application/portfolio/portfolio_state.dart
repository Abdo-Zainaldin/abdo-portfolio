part of 'portfolio_cubit.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState.initial() = PortfolioInitial;
  const factory PortfolioState.loading() = PortfolioLoading;
  const factory PortfolioState.loaded({required PortfolioData portfolioData}) =
      PortfolioLoaded;
  const factory PortfolioState.failure({required String message}) =
      PortfolioFailure;
}
