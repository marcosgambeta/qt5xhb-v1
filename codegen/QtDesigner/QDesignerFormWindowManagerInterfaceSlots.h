%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDesignerFormWindowManagerInterface: public QObject
{
  Q_OBJECT
  public:
  SlotsQDesignerFormWindowManagerInterface(QObject *parent = 0);
  ~SlotsQDesignerFormWindowManagerInterface();
  public slots:
  void activeFormWindowChanged ( QDesignerFormWindowInterface * formWindow );
  void formWindowAdded ( QDesignerFormWindowInterface * formWindow );
  void formWindowRemoved ( QDesignerFormWindowInterface * formWindow );
};
