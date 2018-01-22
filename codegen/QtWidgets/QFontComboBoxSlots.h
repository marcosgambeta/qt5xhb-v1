%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQFontComboBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQFontComboBox(QObject *parent = 0);
  ~SlotsQFontComboBox();
  public slots:
  void currentFontChanged ( const QFont & font );
};
