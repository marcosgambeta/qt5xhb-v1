/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOMMANDLINEOPTION

CLASS QCommandLineParser

   DATA pointer
   DATA class_id INIT Class_Id_QCommandLineParser
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD setSingleDashWordOptionMode
   METHOD addOption
   METHOD addVersionOption
   METHOD addHelpOption
   METHOD setApplicationDescription
   METHOD applicationDescription
   METHOD addPositionalArgument
   METHOD clearPositionalArguments
   METHOD process1
   METHOD process2
   METHOD process
   METHOD parse
   METHOD errorText
   METHOD isSet1
   METHOD isSet2
   METHOD isSet
   METHOD value1
   METHOD value2
   METHOD value
   METHOD values1
   METHOD values2
   METHOD values
   METHOD positionalArguments
   METHOD optionNames
   METHOD unknownOptionNames
   METHOD showHelp
   METHOD helpText
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCommandLineParser
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QCommandLineParser>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QCommandLineParser>
#endif
#endif

/*
QCommandLineParser()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * o = new QCommandLineParser (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCommandLineParser *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QCOMMANDLINEPARSER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setSingleDashWordOptionMode(SingleDashWordOptionMode parsingMode)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETSINGLEDASHWORDOPTIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSingleDashWordOptionMode (  (QCommandLineParser::SingleDashWordOptionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool addOption(const QCommandLineOption &commandLineOption)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCommandLineOption * par1 = (QCommandLineOption *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->addOption ( *par1 ) );
  }
#endif
}


/*
QCommandLineOption addVersionOption()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDVERSIONOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCommandLineOption * ptr = new QCommandLineOption( obj->addVersionOption (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOMMANDLINEOPTION", true );
  }
#endif
}


/*
QCommandLineOption addHelpOption()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDHELPOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCommandLineOption * ptr = new QCommandLineOption( obj->addHelpOption (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOMMANDLINEOPTION", true );
  }
#endif
}


/*
void setApplicationDescription(const QString &description)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETAPPLICATIONDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setApplicationDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString applicationDescription() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_APPLICATIONDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->applicationDescription (  ).toLatin1().data() );
  }
#endif
}


/*
void addPositionalArgument(const QString &name, const QString &description, const QString &syntax = QString())
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDPOSITIONALARGUMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
    obj->addPositionalArgument ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void clearPositionalArguments()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_CLEARPOSITIONALARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearPositionalArguments (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void process(const QStringList &arguments)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_PROCESS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
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
    obj->process ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void process(const QCoreApplication &app)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_PROCESS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCoreApplication * par1 = (QCoreApplication *) _qtxhb_itemGetPtr(1);
    obj->process ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void process(const QStringList &arguments)
//[2]void process(const QCoreApplication &app)

HB_FUNC_STATIC( QCOMMANDLINEPARSER_PROCESS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_PROCESS1 );
  }
  else if( ISNUMPAR(1) && ISQCOREAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_PROCESS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool parse(const QStringList &arguments)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_PARSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
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
    hb_retl( obj->parse ( par1 ) );
  }
#endif
}


/*
QString errorText() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ERRORTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorText (  ).toLatin1().data() );
  }
#endif
}


/*
bool isSet(const QString &name) const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ISSET1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->isSet ( par1 ) );
  }
#endif
}

/*
bool isSet(const QCommandLineOption &option) const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ISSET2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCommandLineOption * par1 = (QCommandLineOption *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isSet ( *par1 ) );
  }
#endif
}


//[1]bool isSet(const QString &name) const
//[2]bool isSet(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_ISSET )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_ISSET1 );
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_ISSET2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString value(const QString &name) const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->value ( par1 ).toLatin1().data() );
  }
#endif
}

/*
QString value(const QCommandLineOption &option) const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCommandLineOption * par1 = (QCommandLineOption *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->value ( *par1 ).toLatin1().data() );
  }
#endif
}


//[1]QString value(const QString &name) const
//[2]QString value(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_VALUE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList values(const QString &name) const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUES1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList strl = obj->values ( par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
#endif
}

/*
QStringList values(const QCommandLineOption &option) const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUES2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCommandLineOption * par1 = (QCommandLineOption *) _qtxhb_itemGetPtr(1);
    QStringList strl = obj->values ( *par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


//[1]QStringList values(const QString &name) const
//[2]QStringList values(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUES )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_VALUES1 );
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    HB_FUNC_EXEC( QCOMMANDLINEPARSER_VALUES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList positionalArguments() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_POSITIONALARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->positionalArguments (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
QStringList optionNames() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_OPTIONNAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->optionNames (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
QStringList unknownOptionNames() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_UNKNOWNOPTIONNAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->unknownOptionNames (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
Q_NORETURN void showHelp(int exitCode = 0)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SHOWHELP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showHelp ( (int) ISNIL(1)? 0 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString helpText() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_HELPTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->helpText (  ).toLatin1().data() );
  }
#endif
}



HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROM )
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

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOMMANDLINEPARSER_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOMMANDLINEPARSER_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETSELFDESTRUCTION )
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