%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQTextEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQTextEdit(QObject *parent = 0);
  ~SlotsQTextEdit();
  public slots:
  void copyAvailable ( bool yes );
  void currentCharFormatChanged ( const QTextCharFormat & f );
  void cursorPositionChanged ();
  void redoAvailable ( bool available );
  void selectionChanged ();
  void textChanged ();
  void undoAvailable ( bool available );
};
