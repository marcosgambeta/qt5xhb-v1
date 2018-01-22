%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQPlainTextEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQPlainTextEdit(QObject *parent = 0);
  ~SlotsQPlainTextEdit();
  public slots:
  void blockCountChanged ( int newBlockCount );
  void copyAvailable ( bool yes );
  void cursorPositionChanged ();
  void modificationChanged ( bool changed );
  void redoAvailable ( bool available );
  void selectionChanged ();
  void textChanged ();
  void undoAvailable ( bool available );
  void updateRequest ( const QRect & rect, int dy );
};
