$header

#include "hbclass.ch"

CLASS QDBusMetaType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD demarshall
   METHOD signatureToType
   METHOD typeToSignature

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
static bool demarshall(const QDBusArgument &, int id, void *data)
*/
HB_FUNC_STATIC( QDBUSMETATYPE_DEMARSHALL )
{
  void * par3 = (void *) hb_parptr(3);
  RBOOL( QDBusMetaType::demarshall ( PINT(2), par3 ) ); // TODO: revisar e corrigir metodo
}


/*
static int signatureToType(const char *signature)
*/
HB_FUNC_STATIC( QDBUSMETATYPE_SIGNATURETOTYPE )
{
  RINT( QDBusMetaType::signatureToType ( PCONSTCHAR(1) ) );
}


/*
static const char *typeToSignature(int type)
*/
HB_FUNC_STATIC( QDBUSMETATYPE_TYPETOSIGNATURE )
{
  const char * str1 = QDBusMetaType::typeToSignature ( PINT(1) );
  hb_retc( str1 );
}



$extraMethods

#pragma ENDDUMP
