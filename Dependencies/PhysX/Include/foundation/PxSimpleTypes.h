// This code contains NVIDIA Confidential Information and is disclosed to you 
// under a form of NVIDIA software license agreement provided separately to you.
//
// Notice
// NVIDIA Corporation and its licensors retain all intellectual property and
// proprietary rights in and to this software and related documentation and 
// any modifications thereto. Any use, reproduction, disclosure, or 
// distribution of this software and related documentation without an express 
// license agreement from NVIDIA Corporation is strictly prohibited.
// 
// ALL NVIDIA DESIGN SPECIFICATIONS, CODE ARE PROVIDED "AS IS.". NVIDIA MAKES
// NO WARRANTIES, EXPRESSED, IMPLIED, STATUTORY, OR OTHERWISE WITH RESPECT TO
// THE MATERIALS, AND EXPRESSLY DISCLAIMS ALL IMPLIED WARRANTIES OF NONINFRINGEMENT,
// MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.
//
// Information and code furnished is believed to be accurate and reliable.
// However, NVIDIA Corporation assumes no responsibility for the consequences of use of such
// information or for any infringement of patents or other rights of third parties that may
// result from its use. No license is granted by implication or otherwise under any patent
// or patent rights of NVIDIA Corporation. Details are subject to change without notice.
// This code supersedes and replaces all information previously supplied.
// NVIDIA Corporation products are not authorized for use as critical
// components in life support devices or systems without express written approval of
// NVIDIA Corporation.
//
// Copyright (c) 2008-2012 NVIDIA Corporation. All rights reserved.
// Copyright (c) 2004-2008 AGEIA Technologies, Inc. All rights reserved.
// Copyright (c) 2001-2004 NovodeX AG. All rights reserved.  



#ifndef PX_FOUNDATION_PX_SIMPLE_TYPES_H
#define PX_FOUNDATION_PX_SIMPLE_TYPES_H

/** \addtogroup foundation
  @{
*/

// Platform specific types:
//Design note: Its OK to use int for general loop variables and temps.

#include "foundation/PxPreprocessor.h"
#include "foundation/Px.h"
#ifndef PX_DOXYGEN
namespace physx
{
#endif
#if defined (PX_WINDOWS) || defined (DOXYGEN)

	typedef signed __int64		PxI64;
	typedef signed int			PxI32;
	typedef signed short		PxI16;
	typedef signed char			PxI8;

	typedef unsigned __int64	PxU64;
	typedef unsigned int		PxU32;
	typedef unsigned short		PxU16;
	typedef unsigned char		PxU8;

	typedef float				PxF32;
	typedef double				PxF64;
		
#elif defined(PX_LINUX) || defined(PX_ANDROID)
	typedef signed long long	PxI64;
	typedef signed int			PxI32;
	typedef signed short		PxI16;
	typedef signed char			PxI8;

	typedef unsigned long long	PxU64;
	typedef unsigned int		PxU32;
	typedef unsigned short		PxU16;
	typedef unsigned char		PxU8;

	typedef float				PxF32;
	typedef double				PxF64;

#elif defined(PX_APPLE)
	typedef signed long long	PxI64;
	typedef signed int			PxI32;
	typedef signed short		PxI16;
	typedef signed char			PxI8;

	typedef unsigned long long	PxU64;
	typedef unsigned int		PxU32;
	typedef unsigned short		PxU16;
	typedef unsigned char		PxU8;

	typedef float				PxF32;
	typedef double				PxF64;

#elif defined(PX_PS3)
	typedef signed long long	PxI64;
	typedef signed int			PxI32;
	typedef signed short		PxI16;
	typedef signed char			PxI8;

	typedef unsigned long long	PxU64;
	typedef unsigned int		PxU32;
	typedef unsigned short		PxU16;
	typedef unsigned char		PxU8;

	typedef float				PxF32;
	typedef double				PxF64;

#elif defined(PX_PSP2)
	typedef signed long long	PxI64;
	typedef signed int			PxI32;
	typedef signed short		PxI16;
	typedef signed char			PxI8;

	typedef unsigned long long	PxU64;
	typedef unsigned int		PxU32;
	typedef unsigned short		PxU16;
	typedef unsigned char		PxU8;

	typedef float				PxF32;
	typedef double				PxF64;

#elif defined(PX_X360)
	typedef signed __int64		PxI64;
	typedef signed int			PxI32;
	typedef signed short		PxI16;
	typedef signed char			PxI8;

	typedef unsigned __int64	PxU64;
	typedef unsigned int		PxU32;
	typedef unsigned short		PxU16;
	typedef unsigned char		PxU8;

	typedef float				PxF32;
	typedef double				PxF64;
    
#elif defined(PX_WII)
	typedef signed long long	PxI64;
	typedef signed int			PxI32;
	typedef signed short		PxI16;
	typedef signed char			PxI8;

	typedef unsigned long long	PxU64;
	typedef unsigned int		PxU32;
	typedef unsigned short		PxU16;
	typedef unsigned char		PxU8;

	typedef float				PxF32;
	typedef double				PxF64;

#else
	#error Unknown platform!

#endif

	PX_COMPILE_TIME_ASSERT(sizeof(PxI8)==1);
	PX_COMPILE_TIME_ASSERT(sizeof(PxU8)==1);
	PX_COMPILE_TIME_ASSERT(sizeof(PxI16)==2);
	PX_COMPILE_TIME_ASSERT(sizeof(PxU16)==2);
	PX_COMPILE_TIME_ASSERT(sizeof(PxI32)==4);
	PX_COMPILE_TIME_ASSERT(sizeof(PxU32)==4);
	PX_COMPILE_TIME_ASSERT(sizeof(PxI64)==8);
	PX_COMPILE_TIME_ASSERT(sizeof(PxU64)==8);

	// Type ranges
#define	PX_MAX_I8			127					//maximum possible sbyte value, 0x7f
#define	PX_MIN_I8			(-128)				//minimum possible sbyte value, 0x80
#define	PX_MAX_U8			255U				//maximum possible ubyte value, 0xff
#define	PX_MIN_U8			0					//minimum possible ubyte value, 0x00
#define	PX_MAX_I16			32767				//maximum possible sword value, 0x7fff
#define	PX_MIN_I16			(-32768)			//minimum possible sword value, 0x8000
#define	PX_MAX_U16			65535U				//maximum possible uword value, 0xffff
#define	PX_MIN_U16			0					//minimum possible uword value, 0x0000
#define	PX_MAX_I32			2147483647			//maximum possible sdword value, 0x7fffffff
#define	PX_MIN_I32			(-2147483647 - 1)	//minimum possible sdword value, 0x80000000
#define	PX_MAX_U32			4294967295U			//maximum possible udword value, 0xffffffff
#define	PX_MIN_U32			0					//minimum possible udword value, 0x00000000
#define	PX_MAX_F32			3.4028234663852885981170418348452e+38F	
												//maximum possible float value
#define	PX_MAX_F64			DBL_MAX				//maximum possible double value

#define PX_EPS_F32			FLT_EPSILON			//maximum relative error of float rounding
#define PX_EPS_F64			DBL_EPSILON			//maximum relative error of double rounding

#ifndef PX_FOUNDATION_USE_F64

	typedef PxF32						PxReal;

	#define	PX_MAX_REAL					PX_MAX_F32
	#define PX_EPS_REAL					PX_EPS_F32
	#define PX_NORMALIZATION_EPSILON	PxReal(1e-20f)	

#else

	typedef PxF64						PxReal;

	#define	PX_MAX_REAL					PX_MAX_F64
	#define PX_EPS_REAL					PX_EPS_F64
	#define PX_NORMALIZATION_EPSILON	PxReal(1e-180)

#endif

#ifndef PX_DOXYGEN
} // namespace physx
#endif

/** @} */
#endif // PX_FOUNDATION_PX_SIMPLE_TYPES_H
