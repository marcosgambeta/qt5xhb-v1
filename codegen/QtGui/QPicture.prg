$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QPicture INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD data
   METHOD isNull
   METHOD load
   METHOD play
   METHOD save
   METHOD setBoundingRect
   METHOD setData
   METHOD size
   METHOD swap

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPicture ( int formatVersion = -1 )
*/
$internalConstructor=|new1|int=-1

/*
QPicture ( const QPicture & pic )
*/
$internalConstructor=|new2|const QPicture &

//[1]QPicture ( int formatVersion = -1 )
//[2]QPicture ( const QPicture & pic )

HB_FUNC_STATIC( QPICTURE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QPicture_new1();
  }
  else if( ISNUMPAR(1) && ISQPICTURE(1) )
  {
    QPicture_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRect boundingRect () const
*/
$method=|QRect|boundingRect|

/*
const char * data () const
*/
$method=|const char *|data|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool load ( const QString & fileName, const char * format = 0 )
*/
$internalMethod=|bool|load,load1|const QString &,const char *=0

/*
bool load ( QIODevice * dev, const char * format = 0 )
*/
$internalMethod=|bool|load,load2|QIODevice *,const char *=0

//[1]bool load ( const QString & fileName, const char * format = 0 )
//[2]bool load ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QPicture_load1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTCHAR(2) )
  {
    QPicture_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool play ( QPainter * painter )
*/
$method=|bool|play|QPainter *

/*
bool save ( const QString & fileName, const char * format = 0 )
*/
$internalMethod=|bool|save,save1|const QString &,const char *=0

/*
bool save ( QIODevice * dev, const char * format = 0 )
*/
$internalMethod=|bool|save,save2|QIODevice *,const char *=0

//[1]bool save ( const QString & fileName, const char * format = 0 )
//[2]bool save ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_SAVE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QPicture_save1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTCHAR(2) )
  {
    QPicture_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBoundingRect ( const QRect & r )
*/
$method=|void|setBoundingRect|const QRect &

/*
virtual void setData ( const char * data, uint size )
*/
$virtualMethod=|void|setData|const char *,uint

/*
uint size () const
*/
$method=|uint|size|

/*
void swap ( QPicture & other )
*/
$method=|void|swap|QPicture &

#pragma ENDDUMP
