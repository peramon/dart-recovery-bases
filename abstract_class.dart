void main() {
  // final windPlant = EnergyPlant(); // No se pueden inicializar clases abstractas
  final windPlant = WindPlant(initialEnergy: 19);
  print(windPlant);
  print('wind: ${chargePhone(windPlant)}');

  // Planta Nuclear
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends o implemenst
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.WIND);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.NUCLEAR;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy( double amount) {
    energyLeft -= (amount * 0.5);
  }
}

enum PlantType { NUCLEAR, WIND, WATER }

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}
