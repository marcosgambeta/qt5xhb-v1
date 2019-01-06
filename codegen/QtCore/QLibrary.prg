%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLibrary(QObject *parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QLibrary(const QString& fileName, QObject *parent = 0)
$internalConstructor=|new2|const QString &,QObject *=0

$prototype=QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
$internalConstructor=|new3|const QString &,int,QObject *=0

$prototype=QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)
$internalConstructor=|new4|const QString &,const QString &,QObject *=0

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

$prototype=bool load()
$method=|bool|load|

$prototype=bool unload()
$method=|bool|unload|

$prototype=bool isLoaded() const
$method=|bool|isLoaded|

$prototype=void setFileName(const QString &fileName)
$method=|void|setFileName|const QString &

$prototype=QString fileName() const
$method=|QString|fileName|

$prototype=void setFileNameAndVersion(const QString &fileName, int verNum)
$internalMethod=|void|setFileNameAndVersion,setFileNameAndVersion1|const QString &,int

$prototype=void setFileNameAndVersion(const QString &fileName, const QString &version)
$internalMethod=|void|setFileNameAndVersion,setFileNameAndVersion2|const QString &,const QString &

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
$addMethod=setFileNameAndVersion

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void setLoadHints(LoadHints hints)
$method=|void|setLoadHints|QLibrary::LoadHints

$prototype=LoadHints loadHints() const
$method=|QLibrary::LoadHints|loadHints|

%% TODO: implementar

$prototype=QFunctionPointer resolve(const char *symbol)
%% $internalMethod=|QFunctionPointer|resolve,resolve1|const char *

$prototype=static QFunctionPointer resolve(const QString &fileName, const char *symbol) // TODO: corrigir implementacao do metodo
%% $internalStaticMethod=|QFunctionPointer|resolve,resolve2|const QString &,const char *

$prototype=static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol) // TODO: corrigir implementacao do metodo
%% $internalStaticMethod=|QFunctionPointer|resolve,resolve3|const QString &,int,const char *

$prototype=static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol) // TODO: corrigir implementacao do metodo
%% $internalStaticMethod=|QFunctionPointer|resolve,resolve4|const QString &,const QString &,const char *

//[1]QFunctionPointer resolve(const char *symbol)
//[2]static QFunctionPointer resolve(const QString &fileName, const char *symbol)
//[3]static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol)
//[4]static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol)

HB_FUNC_STATIC( QLIBRARY_RESOLVE )
{
%%  if( ISNUMPAR(1) && ISCHAR(1) )
%%  {
%%    QLibrary_resolve1();
%%  }
%%  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
%%  {
%%    QLibrary_resolve2();
%%  }
%%  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
%%  {
%%    QLibrary_resolve3();
%%  }
%%  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
%%  {
%%    QLibrary_resolve4();
%%  }
%%  else
%%  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=resolve

$prototype=static bool isLibrary(const QString &fileName)
$staticMethod=|bool|isLibrary|const QString &

#pragma ENDDUMP
