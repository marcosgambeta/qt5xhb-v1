%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQClipboard: public QObject
{
  Q_OBJECT
  public:
  SlotsQClipboard(QObject *parent = 0);
  ~SlotsQClipboard();
  public slots:
  void changed ( QClipboard::Mode mode );
  void dataChanged ();
  void findBufferChanged ();
  void selectionChanged ();
};
