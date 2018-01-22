%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDateTimeEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQDateTimeEdit(QObject *parent = 0);
  ~SlotsQDateTimeEdit();
  public slots:
  void dateChanged ( const QDate & date );
  void dateTimeChanged ( const QDateTime & datetime );
  void timeChanged ( const QTime & time );
};
