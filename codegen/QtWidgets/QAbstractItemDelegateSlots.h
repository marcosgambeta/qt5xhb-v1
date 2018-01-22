%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAbstractItemDelegate: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractItemDelegate(QObject *parent = 0);
  ~SlotsQAbstractItemDelegate();
  public slots:
  void closeEditor ( QWidget * editor, QAbstractItemDelegate::EndEditHint hint = QAbstractItemDelegate::NoHint );
  void commitData ( QWidget * editor );
  void sizeHintChanged ( const QModelIndex & index );
};
