%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMOVIE
REQUEST QPICTURE
REQUEST QPIXMAP
REQUEST QSIZE
#endif

CLASS QLabel INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD buddy
   METHOD hasScaledContents
   METHOD hasSelectedText
   METHOD indent
   METHOD margin
   METHOD movie
   METHOD openExternalLinks
   METHOD picture
   METHOD pixmap
   METHOD selectedText
   METHOD setAlignment
   METHOD setBuddy
   METHOD setIndent
   METHOD setMargin
   METHOD setOpenExternalLinks
   METHOD setScaledContents
   METHOD setSelection
   METHOD setTextFormat
   METHOD setTextInteractionFlags
   METHOD setWordWrap
   METHOD text
   METHOD textFormat
   METHOD textInteractionFlags
   METHOD wordWrap
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD setMovie
   METHOD setNum
   METHOD setPicture
   METHOD setPixmap
   METHOD setText

   METHOD onLinkActivated
   METHOD onLinkHovered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QMovie>

$prototype=QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

$prototype=QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0,Qt::WindowFlags=0

//[1]QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QLABEL_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QLabel_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QLabel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=QWidget * buddy () const
$method=|QWidget *|buddy|

$prototype=bool hasScaledContents () const
$method=|bool|hasScaledContents|

$prototype=bool hasSelectedText () const
$method=|bool|hasSelectedText|

$prototype=int indent () const
$method=|int|indent|

$prototype=int margin () const
$method=|int|margin|

$prototype=QMovie * movie () const
$method=|QMovie *|movie|

$prototype=bool openExternalLinks () const
$method=|bool|openExternalLinks|

$prototype=const QPicture * picture () const
$method=|const QPicture *|picture|

$prototype=const QPixmap * pixmap () const
$method=|const QPixmap *|pixmap|

$prototype=QString selectedText () const
$method=|QString|selectedText|

$prototype=void setAlignment ( Qt::Alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setBuddy ( QWidget * buddy )
$method=|void|setBuddy|QWidget *=0

$prototype=void setIndent ( int )
$method=|void|setIndent|int

$prototype=void setMargin ( int )
$method=|void|setMargin|int

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setScaledContents ( bool )
$method=|void|setScaledContents|bool

$prototype=void setSelection ( int start, int length )
$method=|void|setSelection|int,int

$prototype=void setTextFormat ( Qt::TextFormat )
$method=|void|setTextFormat|Qt::TextFormat

$prototype=void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototype=QString text () const
$method=|QString|text|

$prototype=Qt::TextFormat textFormat () const
$method=|Qt::TextFormat|textFormat|

$prototype=Qt::TextInteractionFlags textInteractionFlags () const
$method=|Qt::TextInteractionFlags|textInteractionFlags|

$prototype=bool wordWrap () const
$method=|bool|wordWrap|

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void clear ()
$method=|void|clear|

$prototype=void setMovie ( QMovie * movie )
$method=|void|setMovie|QMovie *

$prototype=void setNum ( int num )
$internalMethod=|void|setNum,setNum1|int

$prototype=void setNum ( double num )
$internalMethod=|void|setNum,setNum2|double

//[1]void setNum ( int num )
//[2]void setNum ( double num )

HB_FUNC_STATIC( QLABEL_SETNUM )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    PHB_ITEM pNum = hb_param(1, HB_IT_NUMERIC);

    if( pNum )
    {
      if( HB_IS_DOUBLE(pNum) )
      {
        QLabel_setNum2();
      }
      else if( HB_IS_INTEGER(pNum) )
      {
        QLabel_setNum1();
      }
      else
      {
        hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPicture ( const QPicture & picture )
$method=|void|setPicture|const QPicture &

$prototype=void setPixmap ( const QPixmap & )
$method=|void|setPixmap|const QPixmap &

$prototype=void setText ( const QString & )
$method=|void|setText|const QString &

$connectSignalFunction

$signalMethod=|linkActivated(QString)
$signalMethod=|linkHovered(QString)

#pragma ENDDUMP
