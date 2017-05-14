/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileSelector INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
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

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
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
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
    QFileSelector * o = new QFileSelector ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
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
void QFileSelector_select1 ()
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->select ( PQSTRING(1) ).toLatin1().data() );
  }
}

/*
QUrl select(const QUrl &filePath) const
*/
void QFileSelector_select2 ()
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
    if( ISARRAY(1) )
    {
      QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
      //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
      //int i1;
      //int nLen1 = hb_arrayLen(aStrings1);
      //for (i1=0;i1<nLen1;i1++)
      //{
      //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
      //  par1 << temp;
      //}
      obj->setExtraSelectors ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
