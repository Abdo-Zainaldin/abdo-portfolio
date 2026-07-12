part of 'navigation_cubit.dart';

enum PortfolioSection { home, about, projects, experience, contact }

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @Default(PortfolioSection.home) PortfolioSection activeSection,
  }) = _NavigationState;
}
