$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFUNCTIONPOINTER
#endif

CLASS QLibrary INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD load
   METHOD unload
   METHOD isLoaded
   METHOD setFileName
   METHOD fileName
   METHOD setFileNameAndVersion
   METHOD errorString
   METHOD setLoadHints
   METHOD loadHints
   METHOD resolve
   METHOD isLibrary

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QLibrary(QObject *parent = 0)
*/
void QLibrary_new1 ()
{
  QLibrary * o = new QLibrary ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLibrary(const QString& fileName, QObject *parent = 0)
*/
void QLibrary_new2 ()
{
  QLibrary * o = new QLibrary ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
*/
void QLibrary_new3 ()
{
  QLibrary * o = new QLibrary ( PQSTRING(1), PINT(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)
*/
void QLibrary_new4 ()
{
  QLibrary * o = new QLibrary ( PQSTRING(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QLibrary(QObject *parent = 0)
//[2]QLibrary(const QString& fileName, QObject *parent = 0)
//[3]QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
//[4]QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)

HB_FUNC_STATIC( QLIBRARY_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QLibrary_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QLibrary_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QLibrary_new3();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QLibrary_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool load()
*/
$method=|bool|load|

/*
bool unload()
*/
$method=|bool|unload|

/*
bool isLoaded() const
*/
$method=|bool|isLoaded|

/*
void setFileName(const QString &fileName)
*/
$method=|void|setFileName|const QString &

/*
QString fileName() const
*/
$method=|QString|fileName|

/*
void setFileNameAndVersion(const QString &fileName, int verNum)
*/
void QLibrary_setFileNameAndVersion1 ()
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFileNameAndVersion ( PQSTRING(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileNameAndVersion(const QString &fileName, const QString &version)
*/
void QLibrary_setFileNameAndVersion2 ()
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFileNameAndVersion ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setFileNameAndVersion(const QString &fileName, int verNum)
//[2]void setFileNameAndVersion(const QString &fileName, const QString &version)

HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QLibrary_setFileNameAndVersion1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLibrary_setFileNameAndVersion2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
void setLoadHints(LoadHints hints)
*/
$method=|void|setLoadHints|QLibrary::LoadHints

/*
LoadHints loadHints() const
*/
$method=|QLibrary::LoadHints|loadHints|

/*
QFunctionPointer resolve(const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve1 ()
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFunctionPointer * ptr = new QFunctionPointer( obj->resolve ( PCONSTCHAR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
  }
}

/*
static QFunctionPointer resolve(const QString &fileName, const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve2 ()
{
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( PQSTRING(1), PCONSTCHAR(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}

/*
static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve3 ()
{
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( PQSTRING(1), PINT(2), PCONSTCHAR(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}

/*
static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve4 ()
{
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( PQSTRING(1), PQSTRING(2), PCONSTCHAR(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}

//[1]QFunctionPointer resolve(const char *symbol)
//[2]static QFunctionPointer resolve(const QString &fileName, const char *symbol)
//[3]static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol)
//[4]static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol)

HB_FUNC_STATIC( QLIBRARY_RESOLVE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLibrary_resolve1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLibrary_resolve2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
  {
    QLibrary_resolve3();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QLibrary_resolve4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isLibrary(const QString &fileName)
*/
$staticMethod=|bool|isLibrary|const QString &

#pragma ENDDUMP
