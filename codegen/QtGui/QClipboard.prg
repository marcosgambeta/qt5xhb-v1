$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QMIMEDATA
REQUEST QPIXMAP
#endif

CLASS QClipboard INHERIT QObject

   METHOD clear
   METHOD image
   METHOD mimeData
   METHOD ownsClipboard
   METHOD ownsFindBuffer
   METHOD ownsSelection
   METHOD pixmap
   METHOD setImage
   METHOD setMimeData
   METHOD setPixmap
   METHOD setText
   METHOD supportsFindBuffer
   METHOD supportsSelection
   METHOD text

   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QImage>
#include <QMimeData>
#include <QPixmap>

/*
void clear ( Mode mode = Clipboard )
*/
$method=|void|clear|QClipboard::Mode=QClipboard::Clipboard

/*
QImage image ( Mode mode = Clipboard ) const
*/
$method=|QImage|image|QClipboard::Mode=QClipboard::Clipboard

/*
const QMimeData * mimeData ( Mode mode = Clipboard ) const
*/
$method=|const QMimeData *|mimeData|QClipboard::Mode=QClipboard::Clipboard

/*
bool ownsClipboard () const
*/
$method=|bool|ownsClipboard|

/*
bool ownsFindBuffer () const
*/
$method=|bool|ownsFindBuffer|

/*
bool ownsSelection () const
*/
$method=|bool|ownsSelection|

/*
QPixmap pixmap ( Mode mode = Clipboard ) const
*/
$method=|QPixmap|pixmap|QClipboard::Mode=QClipboard::Clipboard

/*
void setImage ( const QImage & image, Mode mode = Clipboard )
*/
$method=|void|setImage|const QImage &,QClipboard::Mode=QClipboard::Clipboard

/*
void setMimeData ( QMimeData * src, Mode mode = Clipboard )
*/
$method=|void|setMimeData|QMimeData *,QClipboard::Mode=QClipboard::Clipboard

/*
void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
*/
$method=|void|setPixmap|const QPixmap &,QClipboard::Mode=QClipboard::Clipboard

/*
void setText ( const QString & text, Mode mode = Clipboard )
*/
$method=|void|setText|const QString &,QClipboard::Mode=QClipboard::Clipboard

/*
bool supportsFindBuffer () const
*/
$method=|bool|supportsFindBuffer|

/*
bool supportsSelection () const
*/
$method=|bool|supportsSelection|

/*
QString text ( Mode mode = Clipboard ) const
*/
$internalMethod=|QString|text,text1|QClipboard::Mode=QClipboard::Clipboard

/*
QString text ( QString & subtype, Mode mode = Clipboard ) const
*/
$internalMethod=|QString|text,text2|QString &,QClipboard::Mode=QClipboard::Clipboard

//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QClipboard_text1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QClipboard_text2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
