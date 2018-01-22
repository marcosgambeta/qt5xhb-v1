%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQColorDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQColorDialog(QObject *parent = 0);
  ~SlotsQColorDialog();
  public slots:
  void colorSelected ( const QColor & color );
  void currentColorChanged ( const QColor & color );
};
