%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQHelpContentModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpContentModel(QObject *parent = 0);
  ~SlotsQHelpContentModel();
  public slots:
  void contentsCreated ();
  void contentsCreationStarted ();
};
