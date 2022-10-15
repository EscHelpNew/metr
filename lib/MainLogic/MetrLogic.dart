class MetrLogic {
  MetrLogic([this._beat = 60, this._beatMin = 20, this._beatMax = 400]);
  int _beat, _beatMin, _beatMax;
  bool _startTik = false;

  int _checkBeat(int inputBeat) {
    if (inputBeat > _beatMax) {
      return _beatMax;
    } else if (inputBeat < _beatMin) {
      return _beatMin;
    } else {
      return inputBeat;
    }
  }

  int get getBeats => _beat;
  void setBeat(int inputBeat) {
    _beat = _checkBeat(inputBeat);
  }

  void addBeat() => _beat++;
  void decBeat() => _beat--;

  void startBeat() => _startTik = true;
  void stopBeat() => _startTik = false;
}
