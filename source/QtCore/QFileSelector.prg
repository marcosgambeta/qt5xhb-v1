/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileSelector INHERIT QObject

   DATA class_id INIT Class_Id_QFileSelector
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD select1
   METHOD select2
   METHOD select
   METHOD extraSelectors
   METHOD setExtraSelectors
   METHOD allSelectors
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileSelector
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileSelector>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileSelector>
#endif

#include <QUrl>

/*
QFileSelector(QObject *parent = 0)
*/
HB_FUNC_STATIC( QFILESELECTOR_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QFileSelector * o = new QFileSelector ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileSelector *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QFILESELECTOR_DELETE )
{
  QFileSelector * obj = (QFileSelector *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString select(const QString &filePath) const
*/
HB_FUNC_STATIC( QFILESELECTOR_SELECT1 )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->select ( par1 ).toLatin1().data() );
  }
}


/*
QUrl select(const QUrl &filePath) const
*/
HB_FUNC_STATIC( QFILESELECTOR_SELECT2 )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->select ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


//[1]QString select(const QString &filePath) const
//[2]QUrl select(const QUrl &filePath) const

HB_FUNC_STATIC( QFILESELECTOR_SELECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILESELECTOR_SELECT1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QFILESELECTOR_SELECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList extraSelectors() const
*/
HB_FUNC_STATIC( QFILESELECTOR_EXTRASELECTORS )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->extraSelectors (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void setExtraSelectors(const QStringList &list)
*/
HB_FUNC_STATIC( QFILESELECTOR_SETEXTRASELECTORS )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setExtraSelectors ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList allSelectors() const
*/
HB_FUNC_STATIC( QFILESELECTOR_ALLSELECTORS )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->allSelectors (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}



#pragma ENDDUMP
