enum EventType { all, jalan, asdp, stasiun, toll, arteri, laut, udara }

EventType eventTypeFromString(String value) {
  switch (value) {
    case 'all':
      return EventType.all;
    case 'jalan':
      return EventType.jalan;
    case 'asdp':
      return EventType.asdp;
    case 'stasiun':
      return EventType.stasiun;
    case 'toll':
      return EventType.toll;
    case 'arteri':
      return EventType.arteri;
    case 'laut':
      return EventType.laut;
    case 'udara':
      return EventType.udara;
    default:
      return EventType.all;
  }
}
