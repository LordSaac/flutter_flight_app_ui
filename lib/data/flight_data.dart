
class FlightItem{
  final String source;
  final String sourceName;
  final String destination;
  final String destinationName;
  final String date;
  final String boardingTime;
  final String duration;
  final String flightNo;
  final String price;
  final String gate;
  final String seat;
  final String flightClass;
  FlightItem({required this.source, required this.sourceName, required this.destination, required this.destinationName, required this.date, required this.boardingTime, required this.duration, required this.flightNo, required this.price, required this.gate, required this.seat, required this.flightClass});

}

List<FlightItem>flightList=[

  FlightItem(source: "PTY", sourceName: "Ciudad de Panamá", destination: "DAV", destinationName: "David", date: "May 19", boardingTime: "08:35 AM", duration: "1h 35m", flightNo: "KB76", price: "FREE", gate: "B2", seat: "19A", flightClass: "Economy"),
  FlightItem(source: "PTY", sourceName: "Ciudad de Panamá", destination: "MPPA", destinationName: "Bocas del Toro", date: "May 23", boardingTime: "02:15 PM", duration: "1h 35m", flightNo: "HG12", price: "FREE", gate: "H2", seat: "33U", flightClass: "Economy"),
  FlightItem(source: "PYV", sourceName: "Darien - YAVIZA", destination: "PTY", destinationName: "Ciudad de Panamá", date: "June 9", boardingTime: "11:35 AM", duration: "11h 55m", flightNo: "DR76", price: "FREE", gate: "B6", seat: "18I", flightClass: "Economy"),
  FlightItem(source: "SYP", sourceName: "Veraguas", destination: "PTY", destinationName: "Ciudad de Panamá", date: "July 25", boardingTime: "01:35 AM", duration: "12h 20m", flightNo: "KK76", price: "FREE", gate: "M2", seat: "44A", flightClass: "Economy"),
  FlightItem(source: "ONX", sourceName: "Colón", destination: "DAV", destinationName: "David", date: "Aug 09", boardingTime: "07:35 PM", duration: "8h 45m", flightNo: "IB76", price: "FREE", gate: "R2", seat: "73A", flightClass: "Economy")

];