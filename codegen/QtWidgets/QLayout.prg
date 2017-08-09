$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMARGINS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QLayout INHERIT QObject,QLayoutItem

   METHOD delete
   METHOD activate
   METHOD addItem
   METHOD addWidget
   METHOD contentsMargins
   METHOD contentsRect
   METHOD count
   METHOD indexOf
   METHOD isEnabled
   METHOD itemAt
   METHOD menuBar
   METHOD parentWidget
   METHOD removeItem
   METHOD removeWidget
   METHOD setAlignment
   METHOD setContentsMargins
   METHOD setEnabled
   METHOD setMenuBar
   METHOD setSizeConstraint
   METHOD setSpacing
   METHOD sizeConstraint
   METHOD spacing
   METHOD takeAt
   METHOD update
   METHOD expandingDirections
   METHOD geometry
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD closestAcceptableSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

%% //[1]QLayout(QWidget * parent)
%% //[2]QLayout()
%%
%% //HB_FUNC_STATIC( QLAYOUT_NEW )
%% //{
%% //  if( ISNUMPAR(1) && ISOBJECT(1) )
%% //  {
%% //    HB_FUNC_EXEC( QLAYOUT_NEW1 );
%% //  }
%% //  else if( ISNUMPAR(0) )
%% //  {
%% //    HB_FUNC_EXEC( QLAYOUT_NEW2 );
%% //  }
%% //}

$deleteMethod

/*
bool activate ()
*/
$method=|bool|activate|

/*
virtual void addItem ( QLayoutItem * item ) = 0
*/
$method=|void|addItem|QLayoutItem *

/*
void addWidget ( QWidget * w )
*/
$method=|void|addWidget|QWidget *

/*
QMargins contentsMargins () const
*/
$method=|QMargins|contentsMargins|

/*
QRect contentsRect () const
*/
$method=|QRect|contentsRect|

/*
virtual int count () const = 0
*/
$method=|int|count|

/*
virtual int indexOf ( QWidget * widget ) const
*/
$method=|int|indexOf|QWidget *

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
virtual QLayoutItem * itemAt ( int index ) const = 0
*/
$method=|QLayoutItem *|itemAt|int

/*
QWidget * menuBar () const
*/
$method=|QWidget *|menuBar|

/*
QWidget * parentWidget () const
*/
$method=|QWidget *|parentWidget|

/*
void removeItem ( QLayoutItem * item )
*/
$method=|void|removeItem|QLayoutItem *

/*
void removeWidget ( QWidget * widget )
*/
$method=|void|removeWidget|QWidget *

/*
bool setAlignment ( QWidget * w, Qt::Alignment alignment )
*/
$internalMethod=|bool|setAlignment,setAlignment1|QWidget *,Qt::Alignment

/*
void setAlignment ( Qt::Alignment alignment )
*/
$internalMethod=|void|setAlignment,setAlignment2|Qt::Alignment

/*
bool setAlignment ( QLayout * l, Qt::Alignment alignment )
*/
$internalMethod=|bool|setAlignment,setAlignment3|QLayout *,Qt::Alignment

//[1]bool setAlignment ( QWidget * w, Qt::Alignment alignment )
//[2]void setAlignment ( Qt::Alignment alignment )
//[3]bool setAlignment ( QLayout * l, Qt::Alignment alignment )

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QLayout_setAlignment1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QLayout_setAlignment2();
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    QLayout_setAlignment3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

/*
void setContentsMargins ( const QMargins & margins )
*/
$internalMethod=|void|setContentsMargins,setContentsMargins2|const QMargins &

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLayout_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLayout_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEnabled ( bool enable )
*/
$method=|void|setEnabled|bool

/*
void setMenuBar ( QWidget * widget )
*/
$method=|void|setMenuBar|QWidget *

/*
void setSizeConstraint ( SizeConstraint )
*/
$method=|void|setSizeConstraint|QLayout::SizeConstraint

/*
void setSpacing ( int )
*/
$method=|void|setSpacing|int

/*
SizeConstraint sizeConstraint () const
*/
$method=|QLayout::SizeConstraint|sizeConstraint|

/*
int spacing () const
*/
$method=|int|spacing|

/*
virtual QLayoutItem * takeAt ( int index ) = 0
*/
$method=|QLayoutItem *|takeAt|int

/*
void update ()
*/
$method=|void|update|

/*
virtual Qt::Orientations expandingDirections () const
*/
$method=|Qt::Orientations|expandingDirections|

/*
virtual QRect geometry () const
*/
$method=|QRect|geometry|

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
virtual bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
virtual QLayout * layout ()
*/
$method=|QLayout *|layout|

/*
virtual QSize maximumSize () const
*/
$method=|QSize|maximumSize|

/*
virtual QSize minimumSize () const
*/
$method=|QSize|minimumSize|

/*
virtual void setGeometry ( const QRect & r )
*/
$method=|void|setGeometry|const QRect &

/*
static QSize closestAcceptableSize ( const QWidget * widget, const QSize & size )
*/
$staticMethod=|QSize|closestAcceptableSize|const QWidget *,const QSize &

#pragma ENDDUMP
