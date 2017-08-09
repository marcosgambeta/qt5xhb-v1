$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QGRAPHICSLAYOUT
REQUEST QPALETTE
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QSTYLE
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsWidget INHERIT QGraphicsObject,QGraphicsLayoutItem

   METHOD new
   METHOD delete
   METHOD addAction
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD focusPolicy
   METHOD focusWidget
   METHOD font
   METHOD getWindowFrameMargins
   METHOD grabShortcut
   METHOD insertAction
   METHOD isActiveWindow
   METHOD layout
   METHOD layoutDirection
   METHOD paintWindowFrame
   METHOD palette
   METHOD rect
   METHOD releaseShortcut
   METHOD removeAction
   METHOD resize
   METHOD setAttribute
   METHOD setAutoFillBackground
   METHOD setContentsMargins
   METHOD setFocusPolicy
   METHOD setFont
   METHOD setGeometry
   METHOD setLayout
   METHOD setLayoutDirection
   METHOD setPalette
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD setStyle
   METHOD setWindowFlags
   METHOD setWindowFrameMargins
   METHOD setWindowTitle
   METHOD size
   METHOD style
   METHOD testAttribute
   METHOD unsetLayoutDirection
   METHOD unsetWindowFrameMargins
   METHOD windowFlags
   METHOD windowFrameGeometry
   METHOD windowFrameRect
   METHOD windowTitle
   METHOD windowType
   METHOD boundingRect
   METHOD getContentsMargins
   METHOD paint
   METHOD shape
   METHOD type
   METHOD close
   METHOD setTabOrder

   METHOD onGeometryChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
*/
$constructor=|new|QGraphicsItem *=0,Qt::WindowFlags=0

$deleteMethod

/*
void addAction ( QAction * action )
*/
$method=|void|addAction|QAction *

/*
void adjustSize ()
*/
$method=|void|adjustSize|

/*
bool autoFillBackground () const
*/
$method=|bool|autoFillBackground|

/*
Qt::FocusPolicy focusPolicy () const
*/
$method=|Qt::FocusPolicy|focusPolicy|

/*
QGraphicsWidget * focusWidget () const
*/
$method=|QGraphicsWidget *|focusWidget|

/*
QFont font () const
*/
$method=|QFont|font|

/*
void getWindowFrameMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
$method=|void|getWindowFrameMargins|qreal *,qreal *,qreal *,qreal *

/*
int grabShortcut ( const QKeySequence & sequence, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut

/*
void insertAction ( QAction * before, QAction * action )
*/
$method=|void|insertAction|QAction *,QAction *

/*
bool isActiveWindow () const
*/
$method=|bool|isActiveWindow|

/*
QGraphicsLayout * layout () const
*/
$method=|QGraphicsLayout *|layout|

/*
Qt::LayoutDirection layoutDirection () const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
virtual void paintWindowFrame ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$method=|void|paintWindowFrame|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
QPalette palette () const
*/
$method=|QPalette|palette|

/*
QRectF rect () const
*/
$method=|QRectF|rect|

/*
void releaseShortcut ( int id )
*/
$method=|void|releaseShortcut|int

/*
void removeAction ( QAction * action )
*/
$method=|void|removeAction|QAction *

/*
void resize ( const QSizeF & size )
*/
$internalMethod=|void|resize,resize1|const QSizeF &

/*
void resize ( qreal w, qreal h )
*/
$internalMethod=|void|resize,resize2|qreal,qreal

//[1]void resize ( const QSizeF & size )
//[2]void resize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

/*
void setAutoFillBackground ( bool enabled )
*/
$method=|void|setAutoFillBackground|bool

/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
$method=|void|setFocusPolicy|Qt::FocusPolicy

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setGeometry ( qreal x, qreal y, qreal w, qreal h )
*/
$internalMethod=|void|setGeometry,setGeometry1|qreal,qreal,qreal,qreal

/*
virtual void setGeometry ( const QRectF & rect )
*/
$internalMethod=|void|setGeometry,setGeometry2|const QRectF &

//[1]void setGeometry ( qreal x, qreal y, qreal w, qreal h )
//[2]virtual void setGeometry ( const QRectF & rect )

HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsWidget_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setLayout ( QGraphicsLayout * layout )
*/
$method=|void|setLayout|QGraphicsLayout *

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
void setPalette ( const QPalette & palette )
*/
$method=|void|setPalette|const QPalette &

/*
void setShortcutAutoRepeat ( int id, bool enabled = true )
*/
$method=|void|setShortcutAutoRepeat|int,bool=true

/*
void setShortcutEnabled ( int id, bool enabled = true )
*/
$method=|void|setShortcutEnabled|int,bool=true

/*
void setStyle ( QStyle * style )
*/
$method=|void|setStyle|QStyle *

/*
void setWindowFlags ( Qt::WindowFlags wFlags )
*/
$method=|void|setWindowFlags|Qt::WindowFlags

/*
void setWindowFrameMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
$method=|void|setWindowFrameMargins|qreal,qreal,qreal,qreal

/*
void setWindowTitle ( const QString & title )
*/
$method=|void|setWindowTitle|const QString &

/*
QSizeF size () const
*/
$method=|QSizeF|size|

/*
QStyle * style () const
*/
$method=|QStyle *|style|

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
$method=|bool|testAttribute|Qt::WidgetAttribute

/*
void unsetLayoutDirection ()
*/
$method=|void|unsetLayoutDirection|

/*
void unsetWindowFrameMargins ()
*/
$method=|void|unsetWindowFrameMargins|

/*
Qt::WindowFlags windowFlags () const
*/
$method=|Qt::WindowFlags|windowFlags|

/*
QRectF windowFrameGeometry () const
*/
$method=|QRectF|windowFrameGeometry|

/*
QRectF windowFrameRect () const
*/
$method=|QRectF|windowFrameRect|

/*
QString windowTitle () const
*/
$method=|QString|windowTitle|

/*
Qt::WindowType windowType () const
*/
$method=|Qt::WindowType|windowType|

/*
virtual QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
$method=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
virtual QPainterPath shape () const
*/
$method=|QPainterPath|shape|

/*
virtual int type () const
*/
$method=|int|type|

/*
bool close ()
*/
$method=|bool|close|

/*
static void setTabOrder ( QGraphicsWidget * first, QGraphicsWidget * second )
*/
$staticMethod=|void|setTabOrder|QGraphicsWidget *,QGraphicsWidget *

#pragma ENDDUMP
