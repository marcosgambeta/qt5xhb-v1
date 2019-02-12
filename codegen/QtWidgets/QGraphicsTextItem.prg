%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QFont>
#include <QtGui/QTextCursor>
#include <QtGui/QTextDocument>

$prototype=QGraphicsTextItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

//[1]QGraphicsTextItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsTextItem_new1();
  }
  else if( ISBETWEEN(1,2)&& ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void adjustSize ()
$method=|void|adjustSize|

$prototype=QColor defaultTextColor () const
$method=|QColor|defaultTextColor|

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=bool openExternalLinks () const
$method=|bool|openExternalLinks|

$prototype=void setDefaultTextColor ( const QColor & col )
$method=|void|setDefaultTextColor|const QColor &

$prototype=void setDocument ( QTextDocument * document )
$method=|void|setDocument|QTextDocument *

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setHtml ( const QString & text )
$method=|void|setHtml|const QString &

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototype=void setTabChangesFocus ( bool b )
$method=|void|setTabChangesFocus|bool

$prototype=void setTextCursor ( const QTextCursor & cursor )
$method=|void|setTextCursor|const QTextCursor &

$prototype=void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototype=void setTextWidth ( qreal width )
$method=|void|setTextWidth|qreal

$prototype=bool tabChangesFocus () const
$method=|bool|tabChangesFocus|

$prototype=QTextCursor textCursor () const
$method=|QTextCursor|textCursor|

$prototype=Qt::TextInteractionFlags textInteractionFlags () const
$method=|Qt::TextInteractionFlags|textInteractionFlags|

$prototype=qreal textWidth () const
$method=|qreal|textWidth|

$prototype=QString toHtml () const
$method=|QString|toHtml|

$prototype=QString toPlainText () const
$method=|QString|toPlainText|

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$virtualMethod=|QPainterPath|opaqueArea|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

$prototype=virtual QPainterPath shape () const
$virtualMethod=|QPainterPath|shape|

$prototype=virtual int type () const
$virtualMethod=|int|type|

$beginSignals
$signal=|linkActivated(QString)
$signal=|linkHovered(QString)
$endSignals

#pragma ENDDUMP
