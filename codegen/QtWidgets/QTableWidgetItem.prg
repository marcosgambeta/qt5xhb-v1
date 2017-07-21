$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QSIZE
REQUEST QTABLEWIDGET
#endif

CLASS QTableWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD checkState
   METHOD clone
   METHOD column
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD isSelected
   METHOD read
   METHOD row
   METHOD setBackground
   METHOD setCheckState
   METHOD setData
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setIcon
   METHOD setSelected
   METHOD setSizeHint
   METHOD setStatusTip
   METHOD setText
   METHOD setTextAlignment
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD statusTip
   METHOD tableWidget
   METHOD text
   METHOD textAlignment
   METHOD toolTip
   METHOD type
   METHOD whatsThis
   METHOD write

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
QTableWidgetItem ( int type = Type )
*/
$internalConstructor=|new1|int=QTableWidgetItem::Type

/*
QTableWidgetItem ( const QString & text, int type = Type )
*/
$internalConstructor=|new2|const QString &,int=QTableWidgetItem::Type

/*
QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
*/
$internalConstructor=|new3|const QIcon &,const QString &,int=QTableWidgetItem::Type

/*
QTableWidgetItem ( const QTableWidgetItem & other )
*/
$internalConstructor=|new4|const QTableWidgetItem &

//[1]QTableWidgetItem ( int type = Type )
//[2]QTableWidgetItem ( const QString & text, int type = Type )
//[3]QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
//[4]QTableWidgetItem ( const QTableWidgetItem & other )

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTableWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTableWidgetItem_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISOPTNUM(3) )
  {
    QTableWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidgetItem_new4();
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
Qt::CheckState checkState () const
*/
$method=|Qt::CheckState|checkState|

/*
virtual QTableWidgetItem * clone () const
*/
$method=|QTableWidgetItem *|clone|

/*
int column () const
*/
$method=|int|column|

/*
virtual QVariant data ( int role ) const
*/
$method=|QVariant|data|int

/*
Qt::ItemFlags flags () const
*/
$method=|Qt::ItemFlags|flags|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QBrush foreground () const
*/
$method=|QBrush|foreground|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
bool isSelected () const
*/
$method=|bool|isSelected|

/*
virtual void read ( QDataStream & in )
*/
$method=|void|read|QDataStream &

/*
int row () const
*/
$method=|int|row|

/*
void setBackground ( const QBrush & brush )
*/
$method=|void|setBackground|const QBrush &

/*
void setCheckState ( Qt::CheckState state )
*/
$method=|void|setCheckState|Qt::CheckState

/*
virtual void setData ( int role, const QVariant & value )
*/
$method=|void|setData|int,const QVariant &

/*
void setFlags ( Qt::ItemFlags flags )
*/
$method=|void|setFlags|Qt::ItemFlags

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setForeground ( const QBrush & brush )
*/
$method=|void|setForeground|const QBrush &

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
void setSelected ( bool select )
*/
$method=|void|setSelected|bool

/*
void setSizeHint ( const QSize & size )
*/
$method=|void|setSizeHint|const QSize &

/*
void setStatusTip ( const QString & statusTip )
*/
$method=|void|setStatusTip|const QString &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setTextAlignment ( int alignment )
*/
$method=|void|setTextAlignment|int

/*
void setToolTip ( const QString & toolTip )
*/
$method=|void|setToolTip|const QString &

/*
void setWhatsThis ( const QString & whatsThis )
*/
$method=|void|setWhatsThis|const QString &

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
QString statusTip () const
*/
$method=|QString|statusTip|

/*
QTableWidget * tableWidget () const
*/
$method=|QTableWidget *|tableWidget|

/*
QString text () const
*/
$method=|QString|text|

/*
int textAlignment () const
*/
$method=|int|textAlignment|

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
int type () const
*/
$method=|int|type|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis|

/*
virtual void write ( QDataStream & out ) const
*/
$method=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
