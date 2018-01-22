%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQIntValidator: public QObject
{
  Q_OBJECT
  public:
  SlotsQIntValidator(QObject *parent = 0);
  ~SlotsQIntValidator();
  public slots:
  void changed();
};
