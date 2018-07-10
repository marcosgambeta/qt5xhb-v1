%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QListWidgetItem ( QListWidget * parent = 0, int type = Type )
$internalConstructor=|new1|QListWidget *=0,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
$internalConstructor=|new2|const QString &,QListWidget *=0,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
$internalConstructor=|new3|const QIcon &,const QString &,QListWidget *=0,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QListWidgetItem & other )
$internalConstructor=|new4|const QListWidgetItem &

//[1]QListWidgetItem ( QListWidget * parent = 0, int type = Type )
//[2]QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
//[3]QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
//[4]QListWidgetItem ( const QListWidgetItem & other )

HB_FUNC_STATIC( QLISTWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQLISTWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QListWidgetItem_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQLISTWIDGET(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QListWidgetItem_new2();
  }
  else if( ISBETWEEN(2,4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQLISTWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QListWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QBrush background () const
$method=|QBrush|background|

$prototype=void setBackground ( const QBrush & brush )
$method=|void|setBackground|const QBrush &

$prototype=Qt::CheckState checkState () const
$method=|Qt::CheckState|checkState|

$prototype=void setCheckState ( Qt::CheckState state )
$method=|void|setCheckState|Qt::CheckState

$prototype=virtual QListWidgetItem * clone () const
$virtualMethod=|QListWidgetItem *|clone|

$prototype=virtual QVariant data ( int role ) const
$virtualMethod=|QVariant|data|int

$prototype=virtual void setData ( int role, const QVariant & value )
$virtualMethod=|void|setData|int,const QVariant &

$prototype=Qt::ItemFlags flags () const
$method=|Qt::ItemFlags|flags|

$prototype=void setFlags ( Qt::ItemFlags flags )
$method=|void|setFlags|Qt::ItemFlags

$prototype=QFont font () const
$method=|QFont|font|

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=QBrush foreground () const
$method=|QBrush|foreground|

$prototype=void setForeground ( const QBrush & brush )
$method=|void|setForeground|const QBrush &

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=bool isHidden () const
$method=|bool|isHidden|

$prototype=void setHidden ( bool hide )
$method=|void|setHidden|bool

$prototype=bool isSelected () const
$method=|bool|isSelected|

$prototype=void setSelected ( bool select )
$method=|void|setSelected|bool

$prototype=QListWidget * listWidget () const
$method=|QListWidget *|listWidget|

$prototype=virtual void read ( QDataStream & in )
$virtualMethod=|void|read|QDataStream &

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=void setSizeHint ( const QSize & size )
$method=|void|setSizeHint|const QSize &

$prototype=QString statusTip () const
$method=|QString|statusTip|

$prototype=void setStatusTip ( const QString & statusTip )
$method=|void|setStatusTip|const QString &

$prototype=QString text () const
$method=|QString|text|

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=int textAlignment () const
$method=|int|textAlignment|

$prototype=void setTextAlignment ( int alignment )
$method=|void|setTextAlignment|int

$prototype=QString toolTip () const
$method=|QString|toolTip|

$prototype=void setToolTip ( const QString & toolTip )
$method=|void|setToolTip|const QString &

$prototype=int type () const
$method=|int|type|

$prototype=QString whatsThis () const
$method=|QString|whatsThis|

$prototype=void setWhatsThis ( const QString & whatsThis )
$method=|void|setWhatsThis|const QString &

$prototype=virtual void write ( QDataStream & out ) const
$virtualMethod=|void|write|QDataStream &

$prototype=QColor backgroundColor() const
$method=|QColor|backgroundColor|

$prototype=virtual void setBackgroundColor(const QColor &color)
$virtualMethod=|void|setBackgroundColor|const QColor &

$prototype=QColor textColor() const
$method=|QColor|textColor|

$prototype=void setTextColor(const QColor &color)
$method=|void|setTextColor|const QColor &

$extraMethods

#pragma ENDDUMP
