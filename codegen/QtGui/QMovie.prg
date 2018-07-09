%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QColor>
#include <QPixmap>

$prototype=QMovie ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
$internalConstructor=|new2|QIODevice *,const QByteArray &=QByteArray(),QObject *=0

$prototype=QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray(),QObject *=0

//[1]QMovie ( QObject * parent = 0 )
//[2]QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
//[3]QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )

HB_FUNC_STATIC( QMOVIE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QMovie_new1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && ISOPTQBYTEARRAY(2) && ISOPTQOBJECT(3) )
  {
    QMovie_new2();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQBYTEARRAY(2) && ISOPTQOBJECT(3) )
  {
    QMovie_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QColor backgroundColor () const
$method=|QColor|backgroundColor|

$prototype=CacheMode cacheMode () const
$method=|QMovie::CacheMode|cacheMode|

$prototype=int currentFrameNumber () const
$method=|int|currentFrameNumber|

$prototype=QImage currentImage () const
$method=|QImage|currentImage|

$prototype=QPixmap currentPixmap () const
$method=|QPixmap|currentPixmap|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototype=int frameCount () const
$method=|int|frameCount|

$prototype=QRect frameRect () const
$method=|QRect|frameRect|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool jumpToFrame ( int frameNumber )
$method=|bool|jumpToFrame|int

$prototype=int loopCount () const
$method=|int|loopCount|

$prototype=int nextFrameDelay () const
$method=|int|nextFrameDelay|

$prototype=QSize scaledSize ()
$method=|QSize|scaledSize|

$prototype=void setBackgroundColor ( const QColor & color )
$method=|void|setBackgroundColor|const QColor &

$prototype=void setCacheMode ( CacheMode mode )
$method=|void|setCacheMode|QMovie::CacheMode

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=void setScaledSize ( const QSize & size )
$method=|void|setScaledSize|const QSize &

$prototype=int speed () const
$method=|int|speed|

$prototype=MovieState state () const
$method=|QMovie::MovieState|state|

%% Public Slots

$prototype=bool jumpToNextFrame ()
$method=|bool|jumpToNextFrame|

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void setSpeed ( int percentSpeed )
$method=|void|setSpeed|int

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

$beginSignals
$signal=|error(QImageReader::ImageReaderError)
$signal=|finished()
$signal=|frameChanged(int)
$signal=|resized(QSize)
$signal=|started()
$signal=|stateChanged(QMovie::MovieState)
$signal=|updated(QRect)
$endSignals

#pragma ENDDUMP
