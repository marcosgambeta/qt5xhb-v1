%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMimeDatabase()
$constructor=|new|

$deleteMethod

$prototype=QMimeType mimeTypeForName(const QString &nameOrAlias) const
$method=|QMimeType|mimeTypeForName|const QString &

$prototype=QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
$internalMethod=|QMimeType|mimeTypeForFile,mimeTypeForFile1|const QString &,QMimeDatabase::MatchMode=QMimeDatabase::MatchDefault

$prototype=QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const
$internalMethod=|QMimeType|mimeTypeForFile,mimeTypeForFile2|const QFileInfo &,QMimeDatabase::MatchMode=QMimeDatabase::MatchDefault

//[1]QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
//[2]QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QMimeDatabase_mimeTypeForFile1();
  }
  else if( ISBETWEEN(1,2) && ISQFILEINFO(1) && ISOPTNUM(2) )
  {
    QMimeDatabase_mimeTypeForFile2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mimeTypeForFile

$prototype=QList<QMimeType> mimeTypesForFileName(const QString &fileName) const
$method=|QList<QMimeType>|mimeTypesForFileName|const QString &

$prototype=QMimeType mimeTypeForData(const QByteArray &data) const
$internalMethod=|QMimeType|mimeTypeForData,mimeTypeForData1|const QByteArray &

$prototype=QMimeType mimeTypeForData(QIODevice *device) const
$internalMethod=|QMimeType|mimeTypeForData,mimeTypeForData2|QIODevice *

//[1]QMimeType mimeTypeForData(const QByteArray &data) const
//[2]QMimeType mimeTypeForData(QIODevice *device) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QMimeDatabase_mimeTypeForData1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QMimeDatabase_mimeTypeForData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mimeTypeForData

$prototype=QMimeType mimeTypeForUrl(const QUrl &url) const
$method=|QMimeType|mimeTypeForUrl|const QUrl &

$prototype=QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
$internalMethod=|QMimeType|mimeTypeForFileNameAndData,mimeTypeForFileNameAndData1|const QString &,QIODevice *

$prototype=QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const
$internalMethod=|QMimeType|mimeTypeForFileNameAndData,mimeTypeForFileNameAndData2|const QString &,const QByteArray &

//[1]QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
//[2]QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    QMimeDatabase_mimeTypeForFileNameAndData1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    QMimeDatabase_mimeTypeForFileNameAndData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mimeTypeForFileNameAndData

$prototype=QString suffixForFileName(const QString &fileName) const
$method=|QString|suffixForFileName|const QString &

$prototype=QList<QMimeType> allMimeTypes() const
$method=|QList<QMimeType>|allMimeTypes|

$extraMethods

#pragma ENDDUMP
