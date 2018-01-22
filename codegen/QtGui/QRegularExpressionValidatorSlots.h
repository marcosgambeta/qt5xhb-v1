%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQRegularExpressionValidator: public QObject
{
  Q_OBJECT
  public:
  SlotsQRegularExpressionValidator(QObject *parent = 0);
  ~SlotsQRegularExpressionValidator();
  public slots:
  void regularExpressionChanged(const QRegularExpression &re);
};
