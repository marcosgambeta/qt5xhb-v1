%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQUndoStack: public QObject
{
  Q_OBJECT
  public:
  SlotsQUndoStack(QObject *parent = 0);
  ~SlotsQUndoStack();
  public slots:
  void canRedoChanged(bool canRedo);
  void canUndoChanged(bool canUndo);
  void cleanChanged(bool clean);
  void indexChanged(int idx);
  void redoTextChanged(const QString & redoText);
  void undoTextChanged(const QString & undoText);
};
