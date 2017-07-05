$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileSelector INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD select
   METHOD extraSelectors
   METHOD setExtraSelectors
   METHOD allSelectors

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

/*
QFileSelector(QObject *parent = 0)
*/
HB_FUNC_STATIC( QFILESELECTOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QFileSelector * o = new QFileSelector ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString select(const QString &filePath) const
*/
$internalMethod=|QString|select,select1|const QString &

/*
QUrl select(const QUrl &filePath) const
*/
$internalMethod=|QUrl|select,select2|const QUrl &

//[1]QString select(const QString &filePath) const
//[2]QUrl select(const QUrl &filePath) const

HB_FUNC_STATIC( QFILESELECTOR_SELECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileSelector_select1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QFileSelector_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList extraSelectors() const
*/
$method=|QStringList|extraSelectors|

/*
void setExtraSelectors(const QStringList &list)
*/
$method=|void|setExtraSelectors|const QStringList &

/*
QStringList allSelectors() const
*/
$method=|QStringList|allSelectors|

#pragma ENDDUMP
