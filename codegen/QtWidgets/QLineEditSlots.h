%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQLineEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQLineEdit(QObject *parent = 0);
  ~SlotsQLineEdit();
  public slots:
  void cursorPositionChanged ( int iold, int inew );
  void editingFinished ();
  void returnPressed ();
  void selectionChanged ();
  void textChanged ( const QString & text );
  void textEdited ( const QString & text );
};
