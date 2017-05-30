/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QCommandLineOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD names
   METHOD setValueName
   METHOD valueName
   METHOD setDescription
   METHOD description
   METHOD setDefaultValue
   METHOD setDefaultValues
   METHOD defaultValues

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCommandLineOption
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCommandLineOption>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCommandLineOption>
#endif

/*
QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
*/
void QCommandLineOption_new1 ()
{
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QCommandLineOption * o = new QCommandLineOption ( PQSTRING(1), par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
*/
void QCommandLineOption_new2 ()
{
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QCommandLineOption * o = new QCommandLineOption ( PQSTRINGLIST(1), par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCommandLineOption(const QCommandLineOption &other)
*/
void QCommandLineOption_new3 ()
{
  QCommandLineOption * par1 = (QCommandLineOption *) _qt5xhb_itemGetPtr(1);
  QCommandLineOption * o = new QCommandLineOption ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[2]QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[3]QCommandLineOption(const QCommandLineOption &other)

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new1();
  }
  else if( ISBETWEEN(1,4) && ISARRAY(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new2();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_DELETE )
{
  QCommandLineOption * obj = (QCommandLineOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void swap(QCommandLineOption &other)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SWAP )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOMMANDLINEOPTION(1) )
    {
      QCommandLineOption * par1 = (QCommandLineOption *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList names() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_NAMES )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->names ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
void setValueName(const QString &name)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETVALUENAME )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setValueName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString valueName() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_VALUENAME )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->valueName () ) );
  }
}

/*
void setDescription(const QString &description)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETDESCRIPTION )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDescription ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString description() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_DESCRIPTION )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->description () ) );
  }
}

/*
void setDefaultValue(const QString &defaultValue)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETDEFAULTVALUE )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDefaultValue ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultValues(const QStringList &defaultValues)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETDEFAULTVALUES )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setDefaultValues ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList defaultValues() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_DEFAULTVALUES )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->defaultValues ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOMMANDLINEOPTION_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOMMANDLINEOPTION_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
