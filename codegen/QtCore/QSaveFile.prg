$header

#include "hbclass.ch"

CLASS QSaveFile INHERIT QFileDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD setFileName
   METHOD open
   METHOD commit
   METHOD cancelWriting
   METHOD setDirectWriteFallback
   METHOD directWriteFallback

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QSaveFile(const QString &name)
*/
void QSaveFile_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * o = new QSaveFile ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSaveFile(QObject *parent = 0)
*/
void QSaveFile_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * o = new QSaveFile ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSaveFile(const QString &name, QObject *parent)
*/
void QSaveFile_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * o = new QSaveFile ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QSaveFile(const QString &name)
//[2]QSaveFile(QObject *parent = 0)
//[3]QSaveFile(const QString &name, QObject *parent)

HB_FUNC_STATIC( QSAVEFILE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSaveFile_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSaveFile_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QSaveFile_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

/*
QString fileName() const
*/
$method=5,1,0|QString|fileName|

/*
void setFileName(const QString &name)
*/
$method=5,1,0|void|setFileName|const QString &

/*
bool open(OpenMode flags)
*/
$method=5,1,0|bool|open|QIODevice::OpenMode

/*
bool commit()
*/
$method=5,1,0|bool|commit|

/*
void cancelWriting()
*/
$method=5,1,0|void|cancelWriting|

/*
void setDirectWriteFallback(bool enabled)
*/
$method=5,1,0|void|setDirectWriteFallback|bool

/*
bool directWriteFallback() const
*/
$method=5,1,0|bool|directWriteFallback|

#pragma ENDDUMP
