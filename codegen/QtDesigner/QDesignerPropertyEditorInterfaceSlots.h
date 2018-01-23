%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDesignerPropertyEditorInterface: public QObject
{
  Q_OBJECT
  public:
  SlotsQDesignerPropertyEditorInterface(QObject *parent = 0);
  ~SlotsQDesignerPropertyEditorInterface();
  public slots:
  void propertyChanged ( const QString & name, const QVariant & value );
};
