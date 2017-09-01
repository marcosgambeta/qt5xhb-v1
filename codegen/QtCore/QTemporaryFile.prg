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
$internalConstructor=|new1|

/*
QTemporaryFile(const QString & templateName)
*/
$internalConstructor=|new2|const QString &

/*
QTemporaryFile(QObject * parent)
*/
$internalConstructor=|new3|QObject *

/*
QTemporaryFile(const QString & templateName, QObject * parent)
*/
$internalConstructor=|new4|const QString &,QObject *

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
$internalStaticMethod=|QTemporaryFile *|createNativeFile,createNativeFile1|QFile &

/*
static QTemporaryFile * createNativeFile(const QString & fileName)
*/
$internalStaticMethod=|QTemporaryFile *|createNativeFile,createNativeFile2|const QString &

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
