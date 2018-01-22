%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQTextDocument: public QObject
{
  Q_OBJECT
  public:
  SlotsQTextDocument(QObject *parent = 0);
  ~SlotsQTextDocument();
  public slots:
  void contentsChange(int from, int charsRemoves, int charsAdded);
  void contentsChanged();
  void undoAvailable(bool b);
  void redoAvailable(bool b);
  void undoCommandAdded();
  void modificationChanged(bool m);
  void cursorPositionChanged(const QTextCursor &cursor);
  void blockCountChanged(int newBlockCount);
  void documentLayoutChanged();
};
