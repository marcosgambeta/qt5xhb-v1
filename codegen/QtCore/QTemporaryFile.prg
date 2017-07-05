$header

#include "hbclass.ch"

CLASS QTemporaryFile INHERIT QFile

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName
   METHOD createNativeFile

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTemporaryFile()
*/
void QTemporaryFile_new1 ()
{
  QTemporaryFile * o = new QTemporaryFile ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTemporaryFile(const QString & templateName)
*/
void QTemporaryFile_new2 ()
{
  QTemporaryFile * o = new QTemporaryFile ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTemporaryFile(QObject * parent)
*/
void QTemporaryFile_new3 ()
{
  QTemporaryFile * o = new QTemporaryFile ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTemporaryFile(const QString & templateName, QObject * parent)
*/
void QTemporaryFile_new4 ()
{
  QTemporaryFile * o = new QTemporaryFile ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTemporaryFile()
//[2]QTemporaryFile(const QString & templateName)
//[3]QTemporaryFile(QObject * parent)
//[4]QTemporaryFile(const QString & templateName, QObject * parent)

HB_FUNC_STATIC( QTEMPORARYFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTemporaryFile_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_new2();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QTemporaryFile_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QTemporaryFile_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoRemove() const
*/
$method=|bool|autoRemove|

/*
QString fileTemplate() const
*/
$method=|QString|fileTemplate|

/*
bool open()
*/
$method=|bool|open|

/*
void setAutoRemove(bool b)
*/
$method=|void|setAutoRemove|bool

/*
void setFileTemplate(const QString & name)
*/
$method=|void|setFileTemplate|const QString &

/*
virtual QString fileName() const
*/
$method=|QString|fileName|

/*
static QTemporaryFile * createNativeFile(QFile & file)
*/
void QTemporaryFile_createNativeFile1 ()
{
  QFile * par1 = (QFile *) _qt5xhb_itemGetPtr(1);
  QTemporaryFile * ptr = QTemporaryFile::createNativeFile ( *par1 );
  _qt5xhb_createReturnClass ( ptr, "QTEMPORARYFILE" );
}

/*
static QTemporaryFile * createNativeFile(const QString & fileName)
*/
void QTemporaryFile_createNativeFile2 ()
{
  QTemporaryFile * ptr = QTemporaryFile::createNativeFile ( PQSTRING(1) );
  _qt5xhb_createReturnClass ( ptr, "QTEMPORARYFILE" );
}

//[1]QTemporaryFile * createNativeFile(QFile & file)
//[2]QTemporaryFile * createNativeFile(const QString & fileName)

HB_FUNC_STATIC( QTEMPORARYFILE_CREATENATIVEFILE )
{
  if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QTemporaryFile_createNativeFile1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_createNativeFile2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
