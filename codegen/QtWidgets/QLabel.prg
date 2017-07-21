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

/*
QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

/*
QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
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

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
QWidget * buddy () const
*/
$method=|QWidget *|buddy|

/*
bool hasScaledContents () const
*/
$method=|bool|hasScaledContents|

/*
bool hasSelectedText () const
*/
$method=|bool|hasSelectedText|

/*
int indent () const
*/
$method=|int|indent|

/*
int margin () const
*/
$method=|int|margin|

/*
QMovie * movie () const
*/
$method=|QMovie *|movie|

/*
bool openExternalLinks () const
*/
$method=|bool|openExternalLinks|

/*
const QPicture * picture () const
*/
$method=|const QPicture *|picture|

/*
const QPixmap * pixmap () const
*/
$method=|const QPixmap *|pixmap|

/*
QString selectedText () const
*/
$method=|QString|selectedText|

/*
void setAlignment ( Qt::Alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setBuddy ( QWidget * buddy )
*/
$method=|void|setBuddy|QWidget *=0

/*
void setIndent ( int )
*/
$method=|void|setIndent|int

/*
void setMargin ( int )
*/
$method=|void|setMargin|int

/*
void setOpenExternalLinks ( bool open )
*/
$method=|void|setOpenExternalLinks|bool

/*
void setScaledContents ( bool )
*/
$method=|void|setScaledContents|bool

/*
void setSelection ( int start, int length )
*/
$method=|void|setSelection|int,int

/*
void setTextFormat ( Qt::TextFormat )
*/
$method=|void|setTextFormat|Qt::TextFormat

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

/*
void setWordWrap ( bool on )
*/
$method=|void|setWordWrap|bool

/*
QString text () const
*/
$method=|QString|text|

/*
Qt::TextFormat textFormat () const
*/
$method=|Qt::TextFormat|textFormat|

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
$method=|Qt::TextInteractionFlags|textInteractionFlags|

/*
bool wordWrap () const
*/
$method=|bool|wordWrap|

/*
virtual int heightForWidth ( int w ) const
*/
$method=|int|heightForWidth|int

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void clear ()
*/
$method=|void|clear|

/*
void setMovie ( QMovie * movie )
*/
$method=|void|setMovie|QMovie *

/*
void setNum ( int num )
*/
$internalMethod=|void|setNum,setNum1|int

/*
void setNum ( double num )
*/
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

/*
void setPicture ( const QPicture & picture )
*/
$method=|void|setPicture|const QPicture &

/*
void setPixmap ( const QPixmap & )
*/
$method=|void|setPixmap|const QPixmap &

/*
void setText ( const QString & )
*/
$method=|void|setText|const QString &

#pragma ENDDUMP
