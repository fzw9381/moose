[Mesh]
  type = GeneratedMesh
  dim = 1
[]

[Problem]
  solve = false
  kernel_coverage_check = false
[]

[Executioner]
  type = Steady
[]

[Trainers]
  [linear]
    type = LinearRegressionTrainer
    input_vpp = old_faithful
    independent_vector = eruptions
    dependent_vector = waiting
  []
[]

[VectorPostprocessors]
  [old_faithful]
    type = CSVReader
    csv_file = 'faithful.csv'
  []
[]
fa
