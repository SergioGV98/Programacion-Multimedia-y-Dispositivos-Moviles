class FilterState {
  bool bSaludable;
  bool bInofensivo;
  bool bPrecaucion;
  bool bPeligroso;

  FilterState({
    this.bSaludable = true,
    this.bInofensivo = true,
    this.bPrecaucion = true,
    this.bPeligroso = true,
  });
}