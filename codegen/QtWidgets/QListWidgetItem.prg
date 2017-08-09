$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QLISTWIDGET
REQUEST QSIZE
REQUEST QCOLOR
#endif

CLASS QListWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD setBackground
   METHOD checkState
   METHOD setCheckState
   METHOD clone
   METHOD data
   METHOD setData
   METHOD flags
   METHOD setFlags
   METHOD font
   METHOD setFont
   METHOD foreground
   METHOD setForeground
   METHOD icon
   METHOD setIcon
   METHOD isHidden
   METHOD setHidden
   METHOD isSelected
   METHOD setSelected
   METHOD listWidget
   METHOD read
   METHOD sizeHint
   METHOD setSizeHint
   METHOD statusTip
   METHOD setStatusTip
   METHOD text
   METHOD setText
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD toolTip
   METHOD setToolTip
   METHOD type
   METHOD whatsThis
   METHOD setWhatsThis
   METHOD write
   METHOD backgroundColor
   METHOD setBackgroundColor
   METHOD textColor
   METHOD setTextColor

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QListWidgetItem ( QListWidget * parent = 0, int type = Type )
*/
$internalConstructor=|new1|QListWidget *=0,int=QListWidgetItem::Type

/*
QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
*/
$internalConstructor=|new2|const QString &,QListWidget *=0,int=QListWidgetItem::Type

/*
QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
*/
$internalConstructor=|new3|const QIcon &,const QString &,QListWidget *=0,int=QListWidgetItem::Type

/*
QListWidgetItem ( const QListWidgetItem & other )
*/
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

/*
QBrush background () const
*/
$method=|QBrush|background|

/*
void setBackground ( const QBrush & brush )
*/
$method=|void|setBackground|const QBrush &

/*
Qt::CheckState checkState () const
*/
$method=|Qt::CheckState|checkState|

/*
void setCheckState ( Qt::CheckState state )
*/
$method=|void|setCheckState|Qt::CheckState

/*
virtual QListWidgetItem * clone () const
*/
$method=|QListWidgetItem *|clone|

/*
virtual QVariant data ( int role ) const
*/
$method=|QVariant|data|int

/*
virtual void setData ( int role, const QVariant & value )
*/
$method=|void|setData|int,const QVariant &

/*
Qt::ItemFlags flags () const
*/
$method=|Qt::ItemFlags|flags|

/*
void setFlags ( Qt::ItemFlags flags )
*/
$method=|void|setFlags|Qt::ItemFlags

/*
QFont font () const
*/
$method=|QFont|font|

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
QBrush foreground () const
*/
$method=|QBrush|foreground|

/*
void setForeground ( const QBrush & brush )
*/
$method=|void|setForeground|const QBrush &

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
bool isHidden () const
*/
$method=|bool|isHidden|

/*
void setHidden ( bool hide )
*/
$method=|void|setHidden|bool

/*
bool isSelected () const
*/
$method=|bool|isSelected|

/*
void setSelected ( bool select )
*/
$method=|void|setSelected|bool

/*
QListWidget * listWidget () const
*/
$method=|QListWidget *|listWidget|

/*
virtual void read ( QDataStream & in )
*/
$method=|void|read|QDataStream &

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void setSizeHint ( const QSize & size )
*/
$method=|void|setSizeHint|const QSize &

/*
QString statusTip () const
*/
$method=|QString|statusTip|

/*
void setStatusTip ( const QString & statusTip )
*/
$method=|void|setStatusTip|const QString &

/*
QString text () const
*/
$method=|QString|text|

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
int textAlignment () const
*/
$method=|int|textAlignment|

/*
void setTextAlignment ( int alignment )
*/
$method=|void|setTextAlignment|int

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
void setToolTip ( const QString & toolTip )
*/
$method=|void|setToolTip|const QString &

/*
int type () const
*/
$method=|int|type|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis|

/*
void setWhatsThis ( const QString & whatsThis )
*/
$method=|void|setWhatsThis|const QString &

/*
virtual void write ( QDataStream & out ) const
*/
$method=|void|write|QDataStream &

/*
QColor backgroundColor() const
*/
$method=|QColor|backgroundColor|

/*
virtual void setBackgroundColor(const QColor &color)
*/
$method=|void|setBackgroundColor|const QColor &

/*
QColor textColor() const
*/
$method=|QColor|textColor|

/*
void setTextColor(const QColor &color)
*/
$method=|void|setTextColor|const QColor &

$extraMethods

#pragma ENDDUMP
