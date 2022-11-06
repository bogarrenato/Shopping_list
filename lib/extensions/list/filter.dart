// allows to filter a stream of list of something and then our where clause is going to get that something
//and should that something pass the test, then it will be included in the final
extension Filter<T> on Stream<List<T>> {
  Stream<List<T>> filter(bool Function(T) where) =>
      map((items) => items.where(where).toList());
}
