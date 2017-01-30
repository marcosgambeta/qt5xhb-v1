/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QCommandLineOption

   DATA pointer
   DATA class_id INIT Class_Id_QCommandLineOption
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCommandLineOption>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCommandLineOption>
#endif
#endif

/*
QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QCommandLineOption * o = new QCommandLineOption ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCommandLineOption *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QCommandLineOption * o = new QCommandLineOption ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCommandLineOption *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QCommandLineOption(const QCommandLineOption &other)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCommandLineOption * par1 = (QCommandLineOption *) _qtxhb_itemGetPtr(1);
  QCommandLineOption * o = new QCommandLineOption ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCommandLineOption *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[2]QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[3]QCommandLineOption(const QCommandLineOption &other)

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEOPTION_NEW1 );
  }
  else if( ISBETWEEN(1,4) && ISARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEOPTION_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEOPTION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void swap(QCommandLineOption &other)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SWAP )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCommandLineOption * par1 = (QCommandLineOption *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList names() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_NAMES )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->names (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void setValueName(const QString &name)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETVALUENAME )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setValueName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString valueName() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_VALUENAME )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->valueName (  ).toLatin1().data() );
  }
}


/*
void setDescription(const QString &description)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETDESCRIPTION )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString description() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_DESCRIPTION )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->description (  ).toLatin1().data() );
  }
}


/*
void setDefaultValue(const QString &defaultValue)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETDEFAULTVALUE )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDefaultValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultValues(const QStringList &defaultValues)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SETDEFAULTVALUES )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
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
    obj->setDefaultValues ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList defaultValues() const
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_DEFAULTVALUES )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->defaultValues (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
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
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QCOMMANDLINEOPTION_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
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
