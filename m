Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426E81AAC9
	for <keys@linux.kernel.org>; Sat, 12 Apr 2025 07:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744444250; cv=none; b=OJzYe+EblyvqmEJkzFJhzD/sEz74ggcZrrHwCDrZM8uQvaUnL3kNwQsmdUBbD1JrtYT0L+8a7947QjSBXof6O+mdQILxsHhgnLOp/dxIHREhT3M8s4e1jRQz+GymcxbbI0+Cnq6ZZBW925V8Zmg/yPpVPJESinvWpn4X+uoyBVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744444250; c=relaxed/simple;
	bh=1EtgU6tkyU20uojwkvpTctcwK7w8t98DZa/RCMoA6tU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GvJdjo75VRGi1j9tzJYe28sH2OQnpIMOw9pycsA7nmAT7RRg3Lkbh1b2SI+4CvlHusTVOeGakRWXm4zntKCHGsywZGPEa+hJt7BKckMNpxwoliP0+718uTw0jsmzK3vJHfq7Culw2HaIkLn3lehYIU4hiHZfqJK3xFeeI4Nn6Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c4ZcfLcD; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c4ZcfLcD"
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e8be1bdb7bso4467018a12.0
        for <keys@linux.kernel.org>; Sat, 12 Apr 2025 00:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744444243; x=1745049043; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cBHdaMGd/qDat816IobNxtFOjN7D5WD6ZHPxs4G3wNg=;
        b=c4ZcfLcDhs485s6d2kQBfhuWtukv5QlnLwmah+fM9UZl4QB9yNtCwJneD1FsWMCY0m
         C4KVXvLlwfPebKWHEAi2F7YYQp5Nv4HVlXhoXLeil6vs6EDXLvPJ4upzCEmqW8swp7Sv
         6eZlXv97SQoYqoI5LWST2AP/BfDirNtkmfkJM+BhNQpexKazZ/ay0ReC7KGgQpVGPJdP
         3ZKLHY7NqMkzY1Uv0QcPHKZzeImrbWdEWx/ll4al1zPPON3w/6iCcrHTio6lKyPR/uzO
         1y4LzyBYJhBxhbLf07G/aNky+GVnFrQZoOKlZHL4brWDXiVkStCcn890PRW6iwMiotbn
         812Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744444243; x=1745049043;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cBHdaMGd/qDat816IobNxtFOjN7D5WD6ZHPxs4G3wNg=;
        b=iFTPrSGWrSoj6HGzk+iy/ZV6H6XZ81vOmCn2G49WyroDzjTiOG7mJATER5i/s3u6/Z
         9w0y+1x17ms69W4koiQCDf7zZn6lAwt/D2OiSMYDRTRz2GAN2ISh1XfJLd85dZ/CLqWr
         ISXX1nAuIK4usP38a87Akboym63n10MJ1UGZSok/2UPu7ZK/IIspPuX1idKCrlk4N8hI
         g8mZBUc9pPyxBXgUUwFu0MBewbqWIVaRm78qGcSpgLQOSd6jb5MK0vq6USDmGR/3KsoT
         KwTEdnwzU9B4nr1lq32P7/fh4b42TYrMbHW/k2223JeSS7Rv1wg+d61jHUQNp5th+jhZ
         zKyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjDpGt9Cw18bSfgmFDZxQdPTWSEbYubradhEQW74J0kjXCzZgozL5qn+4qCDJ5yEIfLIBa@linux.kernel.org
X-Gm-Message-State: AOJu0Yyth7tY2GEQmsTeeX4FnW4LXViG+H0TmvWVQuIfQ2++TgbrIGQq
	GOqSDqOiEHVvRFRG/ijy1scyh3NqD1JPhNdRYTU3Bf376WTcSd1ofifyeQo2BEo=
X-Gm-Gg: ASbGnctIr3Cw1nD7DRafhBugqPMsrch1EPiqySMmyUsPE5Yxrlli4ssaWdHUjMsSxk6
	dCTyu+py/lrrQLUKs+65u2SZ1rmOJc2aev86JHepyC0p36VB3wicu6ikYBjch7HVKWr2qo3oq2W
	sfG1dAosrivhIhNsfNElF6VODOBZSqzhWZupWXenRUH3taro8lFWSPR1FYWmUgRQYojwyXCkOmC
	eheU2i7MEr5PADDrt/Wgggu4W/ZgsemWem0AbIikJmVFMEUulUQcM7oB2aRO+I9WxIM8wOSVlBX
	EwfWWeJwwSdnpIcpU58k3A1MF8FLqrc/0cfotptGyjdpfRypgfGqb/Pi
X-Google-Smtp-Source: AGHT+IG6y3zVhcGuNM1pSc2scfa5nA9o7aRo0CIjZRUaxvTekmO33nOnwLgpZtJNeSUo9B0zxhtj+g==
X-Received: by 2002:a17:907:9620:b0:ac7:c585:c3bc with SMTP id a640c23a62f3a-acad3498c78mr491019566b.19.1744444242959;
        Sat, 12 Apr 2025 00:50:42 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acaa1bb3002sm560009666b.7.2025.04.12.00.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Apr 2025 00:50:42 -0700 (PDT)
Date: Sat, 12 Apr 2025 09:50:39 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Theodore Ts'o <tytso@mit.edu>, keys@linux.kernel.org
Subject: Re: Update key expiration date for tytso@mit.edu
Message-ID: <gebl7ihrxlhfjecmotqxe3filkxfj57kws2xntlpc7jkgzqre3@eelot2tc33yr>
References: <20250410143455.GA327426@mit.edu>
 <20250410-simple-gregarious-beagle-126b4f@lemur>
 <sgntx3uys3zayto7jczmbmixlvqnlqoi7fdhyrbf5sszg2wjlf@nigvacgc2v52>
 <20250411-quantum-kiwi-of-current-2dbcf9@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4zzkf5nqomhz2w3x"
Content-Disposition: inline
In-Reply-To: <20250411-quantum-kiwi-of-current-2dbcf9@lemur>


--4zzkf5nqomhz2w3x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update key expiration date for tytso@mit.edu
MIME-Version: 1.0

On Fri, Apr 11, 2025 at 05:17:44PM -0400, Konstantin Ryabitsev wrote:
> On Thu, Apr 10, 2025 at 05:40:28PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > This is rather odd. The commit you created indeed updated the expiry
> > date on the key, but it also dropped lots of signatures. If I repeat
> > importing Theodore's key, the keys are not dropped for me. (And that's
> > even though I use a gpg version that is affected by
> > https://dev.gnupg.org/T7583.)
> >=20
> > The graph before the import was just "Linus -> tytso", now it's
> > https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/D36=
F769BC11804F0.svg?id=3D3dab90be2abbe5e36edbad698070ff390ea3f886
>=20
> Aren't we purposefully dropping "algo 2" (sha1) signatures from the graph=
? I
> expect this is the reason.
>=20
> 	:signature packet: algo 1, keyid 79BE3E4300411886
> 			version 4, created 1316641796, md5len 0, sigclass 0x10
> 			digest algo 2, begin of digest 3f ca
> 			hashed subpkt 2 len 4 (sig created 2011-09-21)
> 			subpkt 16 len 8 (issuer key ID 79BE3E4300411886)
> 			data: [2047 bits]

Oh, that looks like the relevant point. The 168 signatures that were
dropped from Ted's key are all using SHA1 hashes. Note this is not
happening due to changes in wotmate, but because gnupg drops these. I
just upgraded my gnupg Debian packages from 2.2.46-6 to 2.4.7-13 and can
reproduce that now. If I reimport Ted's key there are even a few more
signatures dropped (I didn't check deeply, I think this is about older
self-signatures).

Looking at:

	$ scripts/kogpg --list-sigs --with-colon | awk -F: '$1 =3D=3D "pub" { publ=
ine =3D $0 } $1 =3D=3D "uid" { uidline =3D $0 } $1 =3D=3D "sig" && $5 =3D=
=3D "79BE3E4300411886" { if (publine) { print publine; publine=3D"" } if (u=
idline) { print uidline; uidline=3D"" } print $0 }'
	pub:-:4096:1:040F1D49EC9DBB8C:1318384675:::-:::scESC::::::23::0:
	uid:-::::1510116194::21722184B5FEDC261263C558C95C808D7E7D475E::Paul Macker=
ras <paulus@samba.org>::::::::::0:
	sig:::1:79BE3E4300411886:1382530198::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:07D0453A16B73617:1318971903:::-:::scESC::::::23::0:
	uid:-::::1319049914::69DE86FB76CE4142DDB838629DF2646C3A7615DB::Len Brown <=
lenb417@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572652::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318972337::C179AF1C3D2D6C33729562FF3B4364B92109BAA9::Len Brown <=
lenb@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572652::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318971903::47EAB92B44CD5DDD03C869B601B7E201E869C8F8::Len Brown <=
len.brown@intel.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572652::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:109F098506FF0B14:1317319759:1946968859::-:::scESC::::::23::0:
	uid:-::::1631608859::C09988350F2268976313AC46F1DD0745D7EB83D3::Thomas Glei=
xner <tglx@linutronix.de>::::::::::0:
	sig:::1:79BE3E4300411886:1319572771::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:17212997986C5765:1469647938:::-:::scESCA::::::23::0:
	uid:-::::1473454517::8B5813F95C4B4EADDC7CF43196287C7748227079::Benson Leun=
g <bleung@chromium.org>::::::::::0:
	sig:::1:79BE3E4300411886:1568226854::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1473454517::BC6D5BFFC9226CD8CAE2CBDF790196348AE70DDB::Benson Leun=
g (Google work) <bleung@google.com>::::::::::0:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1473354160::7DB8358CB290D5B63388EC1177CF3B99BA667B5D::Benson Leun=
g (Personal) <leung.benson@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1557812569::37E3172ECDB83919C1E6BA0C2CA5092230B1CA74::Benson Leun=
g (kernel.org) <bleung@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	pub:-:4096:1:20D04E5A713660A7:1317434860:::-:::scESC::::::23::0:
	uid:-::::1317435621::A98DDFD719D0850129FED600D49AB4F2FCC9BC45::Junio C Ham=
ano <gitster@pobox.com>::::::::::0:
	sig:::1:79BE3E4300411886:1342803818::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317435605::94B95623A120D154472699791800F509B102D64F::Junio C Ham=
ano <jch@google.com>::::::::::0:
	sig:::1:79BE3E4300411886:1342803824::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317435582::7142536458BD89BA8133FBBB897BCFD7C90829B9::Junio C Ham=
ano <junio@pobox.com>::::::::::0:
	sig:::1:79BE3E4300411886:1342803824::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:2DB3C3321B6DDF86:1699972204:::-:::scESC::::::23::0:
	uid:-::::1700089075::4EF3E09A1C4FE7C13495BF6184EB5D5C25F929A7::H. Peter An=
vin (signature key) <hpa@zytor.com>::::::::::0:
	sig:::1:79BE3E4300411886:1700108109::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1699998401::634F270269D63B2E22D16FE290474255040BD99C::H. Peter An=
vin (signature key) <hpa@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1700108104::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	pub:-:4096:1:2EA76B9C2B466D9D:1315177973:::-:::scESCA::::::23::0:
	uid:-::::1352832216::417964026A30B8CEB32FA236480BD60DB3E04B2F::John Hawley=
 ("Warthog9") <warthog9@eaglescrag.net>::::::::::0:
	sig:::1:79BE3E4300411886:1319572533::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1315178363::6F14D6DB1F62F8A32DFD4B3417C2B04193198DCF::John Hawley=
 ("Warthog9") <warthog9@linux.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572533::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1315178229::5C5D3C0E6C384E08BE67082EDAFD668319464E43::John Hawley=
 ("Warthog9") <warthog9@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572533::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1315178279::A72A242686A9E10BE5E58BA64463E32E57585A87::John Hawley=
 ("Warthog9") <jhawley@eaglescrag.net>::::::::::0:
	sig:::1:79BE3E4300411886:1319572533::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1315177973::29D32A4CE87B8CBA6E7ECED64F23D35CB69DDDC8::John Hawley=
 ("Warthog9") <warthog19@eaglescrag.net>::::::::::0:
	sig:::1:79BE3E4300411886:1319572533::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:362D16C8D693AF2A:1317614000:::-:::scESC::::::23::0:
	uid:-::::1317614540::2AF2B9BC67919AEFBFCD47886318A0220B112C36::Keith Packa=
rd (4096 bit RSA key) <keithp@keithp.com>::::::::::0:
	sig:::1:79BE3E4300411886:1317762874::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317614514::882ABBC872251B5BFA81EE6BCE06E0A4E6966446::Keith Packa=
rd (4096 bit RSA key) <keithp@debian.org>::::::::::0:
	sig:::1:79BE3E4300411886:1317762874::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317614514::4CE96D8948235A12B176711FBB59A02D322F4004::Keith Packa=
rd (4096 bit RSA key) <keith.packard@intel.com>::::::::::0:
	sig:::1:79BE3E4300411886:1317762874::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:e:4096:1:377C7F21FE3D1F91:1366211633:1743666248::-:::sc::::::23::0:
	uid:e::::1680594248::8615361B0A6D7A675A4960272098D0E39E1FE8E6::Michal Sime=
k <monstr@monstr.eu>::::::::::0:
	sig:::1:79BE3E4300411886:1382695039::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:e::::1680594253::77CCE6386DF6EDF9937B79490BDAEDA957FECF83::Michal Sime=
k (Xilinx) <michals@xilinx.com>::::::::::0:
	sig:::1:79BE3E4300411886:1382695039::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:e::::1680594254::D2C978A9B07FB21934A94C8B14D7827B67DBA8A9::Michal Sime=
k (Xilinx) <michal.simek@xilinx.com>::::::::::0:
	sig:::1:79BE3E4300411886:1382695039::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:38DBBDC86092693E:1316795861:::-:::scESC::::::23::0:
	uid:-::::1316795861::3BAAD78EF87752C4340B2D958A2BABFB62BF9A89::Greg Kroah-=
Hartman (Linux kernel stable release signing key) <greg@kroah.com>:::::::::=
:0:
	sig:::1:79BE3E4300411886:1319572313::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:2048:1:41DD4B18780D59C4:1317058911:::-:::scESC::::::23::0:
	uid:-::::1317061462::A639523E2C50F53F9C650BD2D20908D5412A70D4::Arjan van d=
e Ven (work related key) <arjan@linux.intel.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572564::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317058911::B584945A5F9EE6C417AA89242F596DC188280584::Arjan van d=
e Ven (Work related key) <arjan.van.de.ven@intel.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572564::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	sig:::1:79BE3E4300411886:1319572564::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:435AE3866102DD21:1317664239:::-:::scESC::::::23::0:
	uid:-::::1317664239::3F064FB2B4D4B321E01DFEB7111AB197F90489BE::Roland Drei=
er <roland@digitalvampire.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572960::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:5D3C6CC76ACAFA02:1408467583:::-:::scESC::::::23::0:
	uid:-::::1408467583::B6B3EF4BB3CDBB1863078C86822C338D06A6EA10::Davidlohr B=
ueso (kernel.org) <dave@stgolabs.net>::::::::::0:
	sig:::1:79BE3E4300411886:1408576586::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:63762CDA67E2F359:1317892353:::-:::scESC::::::23::0:
	uid:-::::1322239151::845FE1EA5780C9D84919B1B84C9C9136901F6BEE::David Woodh=
ouse <dwmw2@infradead.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572380::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1322239160::CF4524DB8A43290009BBD3AD7DCB5ACEE627ED62::David Woodh=
ouse <dwmw2@exim.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572380::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1322239160::5CB07CC3EDBFFC02DF44C7B40A99314C8E5DF0D3::David Woodh=
ouse <david@woodhou.se>::::::::::0:
	sig:::1:79BE3E4300411886:1319572380::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1322239160::FB5B387717C4A9CDEFB04398CF3301226F3D0BE4::David Woodh=
ouse <dwmw2@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572380::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:63B4F0197F3C42E7:1318257341:::-:::scESC::::::23::0:
	uid:-::::1318257341::E02E9AC987B839C1B27ED6FFF8165F0EDFB3DD0B::Mauro Carva=
lho Chehab <mchehab@redhat.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572460::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:670BE78A960A00F2:1319534919:1777520316::-:::scESC::::::23::0:
	uid:-::::1704944321::9321EC2AE9DCE4E95BCFC2AED4BC0AA390B3C2D7::Trond Mykle=
bust <Trond.Myklebust@netapp.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319573099::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:733AD9848B744C5E:1318152038:::-:::scESC::::::23::0:
	uid:-::::1402632385::2E4568238077E3A24998E29EFD6F04E5CBD8B847::Benjamin He=
rrenschmidt <benh@kernel.crashing.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319573050::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318152808::9CBCEE86DD0DDC1A43AFCCBD5B9A6F35B15722FB::Benjamin He=
rrenschmidt <benh@ozlabs.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319573050::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318152853::93A5434E2C25E8F2BE14CA1830170E13BEADDEC6::Benjamin He=
rrenschmidt <benh@au1.ibm.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319573050::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318152831::9382A8360514B72C26ED14B9CAFD89E6E6E24144::Benjamin He=
rrenschmidt <bherren@au1.ibm.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319573050::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318152785::AEAB80C871AFBE82A5383D241B15E4FABF040926::Benjamin He=
rrenschmidt <ben.herrenschmidt@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319573050::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:7647E1A44BC0E4BA:1317325325:::-:::scESC::::::23::0:
	uid:-::::1317325325::CA3CDED8925E4E78E82868931E2FC56D49EB323A::Peter Zijls=
tra <peterz@infradead.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572005::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:2048:1:79BE3E4300411886:1316554898:::-:::scESC::::::23::0:
	uid:-::::1511987475::4F4D48B3CDD4F15E28D8380D223E7F35AD67BDB7::Linus Torva=
lds <torvalds@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1511987475::::Linus Torvalds <torvalds@kernel.org=
>:13x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1316554898::FB51A29A9DF021398A9C921F8BDBF3BE95801D2D::Linus Torva=
lds <torvalds@linux-foundation.org>::::::::::0:
	sig:::1:79BE3E4300411886:1316554898::::Linus Torvalds <torvalds@kernel.org=
>:13x:::::2:
	sig:::1:79BE3E4300411886:1316554898::::Linus Torvalds <torvalds@kernel.org=
>:18x:::::2:
	pub:-:4096:1:7C56ACFE947897D8:1244874883:::-:::scESC::::::23::0:
	uid:-::::1319678867::A727E8D436435B7AD88262DC1D7438BD7F8DEE3C::Anibal Mons=
alve Salazar <anibal@debian.org>::::::::::0:
	sig:::1:79BE3E4300411886:1389062110::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1319678710::FD41852CFAD00D59585918F39C9D99451D9292ED::Anibal Mons=
alve Salazar <anibal@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1389062110::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:7CC6FC3344B247E2:1319448063:::-:::scESC::::::23::0:
	uid:-::::1319448063::87EF4B5C9878DD4EA52C86C12C6B97D74D0326E1::Mel Gorman =
(kernel.org) <mel@csn.ul.ie>::::::::::0:
	sig:::1:79BE3E4300411886:1319572991::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:7CF76C1A6E2C4CCE:1317508850:::-:::scESC::::::23::0:
	uid:-::::1317508850::739D1F1D5D544A72A207AC87369B1F16DE1426B0::Randy Dunla=
p (sign) <rdunlap@xenotime.net>::::::::::0:
	sig:::1:79BE3E4300411886:1317762562::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:80A77F6095CDE47E:1317657545:::-:::scESC::::::23::0:
	uid:-::::1318280867::5D2B5C9BA52D750CB4D99F655E9B7864703CB7AB::Stephen Hem=
minger <shemminger@vyatta.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572243::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318280853::A0D0DB798627ECE03C42203D3623EE2FF405DC63::Stephen Hem=
minger <stephen.hemminger@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572243::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318280867::ECE8DDAC4B243A99E05C8A7241E3A6DE6C312960::Stephen Hem=
minger <stephen.hemminger@vyatta.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572243::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1470503337::7675D08E0890DD86DE5A485CE4E99A836F3B1EC1::Stephen Hem=
minger (Microsoft open source server) <sthemmin@linuxonhyperv.com>:::::::::=
:0:
	sig:::1:79BE3E4300411886:1319572243::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:2048:1:814AE47C214854D6:1316755024:1773247245::-:::scESCA::::::23::0:
	uid:-::::1615567245::B1D14E04CB1FC285926396573E7CF601B3062A18::James Botto=
mley <James.Bottomley@HansenPartnership.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572746::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1615567256::433F6BC8DF221DF1D6774D1866F50B796288E380::James Botto=
mley <jejb@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572746::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:r::::::776F30790A3F70DE515A45E2223F6CDA0B3A3AFA::James Bottomley <JBot=
tomley@Parallels.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572746::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:8972F4DFDC6DC026:1285612768:::-:::scESCA::::::23::0:
	uid:-::::1285614370::869D6335304A508586D5D09250F7C4DEB2AE9C3F::Kees Cook <=
kees@outflux.net>::::::::::0:
	sig:::1:79BE3E4300411886:1317762799::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1285613966::9378CAC2FDD37B53A5935D5795986A2EDEA5FA43::Kees Cook <=
kees@debian.org>::::::::::0:
	sig:::1:79BE3E4300411886:1317762799::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1285613946::55AF9C8295D9DEA4B917443F92D16DB7A0677EC7::Kees Cook <=
kees@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1317762799::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1285613986::5C5ADA11839507410A16A7974E4A564F05779322::Kees Cook <=
kees@ubuntu.com>::::::::::0:
	sig:::1:79BE3E4300411886:1317762799::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317693684::96F0E57F65D5CEBBCED4C29045867661B489B02D::Kees Cook <=
keescook@google.com>::::::::::0:
	sig:::1:79BE3E4300411886:1317762799::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317693669::866BB2E676F4B31E5E2334F30E17F076CE20E0CD::Kees Cook <=
keescook@chromium.org>::::::::::0:
	sig:::1:79BE3E4300411886:1317762799::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:8DCE35563022E57A:1317855131:::-:::scESCA::::::23::0:
	uid:-::::1317855131::DAEBAF1663B751AE4088FAB1A8998F3D0A04844A::Jonathan Co=
rbet <corbet@lwn.net>::::::::::0:
	sig:::1:79BE3E4300411886:1319572483::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:972D5BF4DC613806:1317839703:::-:::scESC::::::23::0:
	uid:-::::1317841368::6A1682EC96F91D3C562BE77D389825FA67CB0F17::John W. Lin=
ville <linville@tuxdriver.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319573515::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317841608::35F9F03C3E59E0D3F2B3EEDC78991103A208D602::John W. Lin=
ville <linville@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319573515::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317841110::24B581E5640BE9846338933EAAFA88647E095370::John W. Lin=
ville <linville@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319573515::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	sig:::1:79BE3E4300411886:1319573515::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:9EBF12F372D9FB8C:1317830986:::-:::scESC::::::23::0:
	uid:-::::1317830986::625CE82F04079B5646E03648B49EC21C0064602F::Paul E. McK=
enney <paulmck@linux.vnet.ibm.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572899::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:A84E7FB9A5F2E36C:1317752040:::-:::scESC::::::23::0:
	uid:-::::1317752040::301245024036DA316C660540DBDC83ABAEA280FE::Rafael J. W=
ysocki <rjw@sisk.pl>::::::::::0:
	sig:::1:79BE3E4300411886:1319572050::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:BDA06085493BACE4:1316650243:::-:::scESC::::::23::0:
	uid:-::::1316651990::40EBCD48A35FC1994BFB9F10D85246DEEFF6FBBA::H. Peter An=
vin (hpa) <hpa@zytor.com>::::::::::0:
	sig:::1:79BE3E4300411886:1316653265::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1316651855::4DF997F4636CF13144FAC8B673E55C9B2DBE3851::H. Peter An=
vin <hpa@infradead.org>::::::::::0:
	sig:::1:79BE3E4300411886:1316653265::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1316651808::D7D9EA47EC3F5BFFA67251D300F4930D103C1DF3::H. Peter An=
vin <h.peter.anvin@intel.com>::::::::::0:
	sig:::1:79BE3E4300411886:1316653265::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:2048:1:C0ADFFFAB1FB1C18:1292494859:::-:::scESC::::::23::0:
	uid:-::::1292494859::1045D3812D98AC1583AE3D305A3D4DB402B2D368::Andi Kleen =
<ak@linux.intel.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572799::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:C1A460725B51CBCF:1318243484:::-:::scESC::::::23::0:
	uid:-::::1318243484::936E519EF511470B1E7300008E67C35F48EBF931::Andrea Arca=
ngeli <aarcange@redhat.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572036::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:2048:1:C83B0745DF188DFE:1316555422:::-:::scESC::::::23::0:
	uid:-::::1316555503::94E9FBBD80F9E3DC6DF0666892AF083B85B21AE5::Dirk Hohnde=
l <dirk@hohndel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1316556647::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1316555422::EF50127253C374C3508BDF76A6B6BD4E5249ACE4::Dirk Hohnde=
l <hohndel@infradead.org>::::::::::0:
	sig:::1:79BE3E4300411886:1316556647::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:C93A8F10916BCA39:1317756903:::-:::scESC::::::23::0:
	uid:-::::1318265261::85B9EC4A14FAF38938BCA6A3CC58C36937B01F60::Jesse Sayer=
 Barnes <jbarnes@virtuousgeek.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572677::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1318265245::3EFE5B41B35ED78A7804FE7D355FE97B78D62DE0::Jesse Sayer=
 Barnes <jesse.barnes@intel.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572677::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:E63EDCA9329DD07E:1320705259:::-:::scESCA::::::23::0:
	uid:-::::1742847133::43678676DF8D2E0036988036E2A32EA49D8A4F37::Konstantin =
Ryabitsev <konstantin@linuxfoundation.org>::::::::::0:
	sig:::1:79BE3E4300411886:1445843887::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1742847117::D12B13B70EC11508C6F70B4EBAD3D5BB97207654::Konstantin =
Ryabitsev <mricon@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1445843887::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1742847134::16041CE3484A4522BDDCB8FFDAD3FCBE82A05A97::Konstantin =
Ryabitsev (Fedora) <icon@fedoraproject.org>::::::::::0:
	sig:::1:79BE3E4300411886:1445843887::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	sig:::1:79BE3E4300411886:1445843887::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:EB751458FA118320:1319373607:::-:::scESC::::::23::0:
	uid:-::::1319373607::DB3717AFC9565F2B895BAE9F99614BC9B78EE816::James Morri=
s <jmorris@namei.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319572501::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:EBC26CDB5A56DE73:1317327516:::-:::scESC::::::23::0:
	uid:-::::1476725536::FB5CD963FCD77A3E0C0392F99CD2A6743D57CB45::Steven Rost=
edt (Der Hacker) <rostedt@goodmis.org>::::::::::0:
	sig:::1:79BE3E4300411886:1319573079::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:EF1F7EB8765E435D:1377387001:::-:::scESCA::::::23::0:
	uid:-::::1377387234::DDA08C2934681DF15DBA0FBD479A581FA3C41B2A::Rafael J. W=
ysocki <rjw@rjwysocki.net>::::::::::0:
	sig:::1:79BE3E4300411886:1380736289::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1377387131::ADB29541942884607E97A19F8D5DECAED969963A::Rafael J. W=
ysocki <rjwysocki@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1380736289::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:F4E7901BE4ADAC64:1317677784:::-:::scESCA::::::23::0:
	uid:-::::1643297785::4574BA535EF9FB0D05782940839B144B7AE649EB::Russell Kin=
g <rmk@arm.linux.org.uk>::::::::::0:
	sig:::1:79BE3E4300411886:1319572345::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1319151515::BC0257BBB54A4BFD2CFA92956CC64D4BFE5FE59E::Russell Kin=
g <linux@arm.linux.org.uk>::::::::::0:
	sig:::1:79BE3E4300411886:1319572345::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:F7D358FB2971E0A6:1318832518:::-:::scESC::::::23::0:
	uid:-::::1318833051::6FDD9AE6EDE51A82485BF13E36AB5BA379B98C3B::Jens Axboe =
<axboe@kernel.dk>::::::::::0:
	sig:::1:79BE3E4300411886:1319572089::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	sig:::1:79BE3E4300411886:1319572089::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	pub:-:4096:1:FBB7576BA7CB0B6B:1317814277:::-:::scESC::::::23::0:
	uid:-::::1317856952::21CF66747373995BDD0CDA878C032991ACDD0B38::David Howel=
ls <dhowells@redhat.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572112::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:
	uid:-::::1317814277::E79DFFFCA08CA4AE07A9960B20F5051194F50BFB::David Howel=
ls <dhowells74@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1319572112::::Linus Torvalds <torvalds@kernel.org=
>:10x:::::2:

(kogpg is a script that imports the current keyring in a temp gpgdir and
then calls gpg on that import with the given parameters.)

There are currently 40 keys with in sum 91 signatures by Linus. 85 of
these signatures are using SHA-1 (see the 2 in field 16 of the sig
lines).

So currently only the following keys are considered properly signed by
Linus:

	$ scripts/kogpg --list-sigs --with-colon | awk -F: '$1 =3D=3D "pub" { publ=
ine =3D $0 } $1 =3D=3D "uid" { uidline =3D $0 } $1 =3D=3D "sig" && $5 =3D=
=3D "79BE3E4300411886" && $16 !=3D "2" { if (publine) { print publine; publ=
ine=3D"" } if (uidline) { print uidline; uidline=3D"" } print $0 }'
	pub:-:4096:1:17212997986C5765:1469647938:::-:::scESCA::::::23::0:
	uid:-::::1473454517::8B5813F95C4B4EADDC7CF43196287C7748227079::Benson Leun=
g <bleung@chromium.org>::::::::::0:
	sig:::1:79BE3E4300411886:1568226854::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1473454517::BC6D5BFFC9226CD8CAE2CBDF790196348AE70DDB::Benson Leun=
g (Google work) <bleung@google.com>::::::::::0:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1473354160::7DB8358CB290D5B63388EC1177CF3B99BA667B5D::Benson Leun=
g (Personal) <leung.benson@gmail.com>::::::::::0:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1557812569::37E3172ECDB83919C1E6BA0C2CA5092230B1CA74::Benson Leun=
g (kernel.org) <bleung@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1568226858::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	pub:-:4096:1:2DB3C3321B6DDF86:1699972204:::-:::scESC::::::23::0:
	uid:-::::1700089075::4EF3E09A1C4FE7C13495BF6184EB5D5C25F929A7::H. Peter An=
vin (signature key) <hpa@zytor.com>::::::::::0:
	sig:::1:79BE3E4300411886:1700108109::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	uid:-::::1699998401::634F270269D63B2E22D16FE290474255040BD99C::H. Peter An=
vin (signature key) <hpa@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1700108104::::Linus Torvalds <torvalds@kernel.org=
>:10x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:
	pub:-:2048:1:79BE3E4300411886:1316554898:::-:::scESC::::::23::0:
	uid:-::::1511987475::4F4D48B3CDD4F15E28D8380D223E7F35AD67BDB7::Linus Torva=
lds <torvalds@kernel.org>::::::::::0:
	sig:::1:79BE3E4300411886:1511987475::::Linus Torvalds <torvalds@kernel.org=
>:13x::ABAF11C65A2970B130ABE3C479BE3E4300411886:::8:

Ignoring Linus' own key with his self signature that leaves us with two
keys that are directly trusted by Linus and so can be used to create the
WoT. If I reimport all keys with that new gnupg version there are only
80 keys left that are properly reachable from Linus' key (among them my
key =F0=9F=98=85).

If I drop the lint check the number of keys that pass the reimport step
increases to 111 (and then also contains Linus' key).

Best regards
Uwe

--4zzkf5nqomhz2w3x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmf6G00ACgkQj4D7WH0S
/k6pLAgAsZeBF8QpL3GJpOgjV9TllhWGvl0C5RmjrTEAp+RsCxAEttn4+nynXVdL
Z/KPwcQVbii/rq5MIiN4T8X/c1L4fiT8psWkUZgXKLlMIUcjc2q8vbVtFcSPCfAw
Uhoo7+LNyrPD/dx3Rbzy7f3nMDbCEpaJt4Zcy2FFRRWcSpNPwlq5lVBBxtR6wZOe
iR/09jeSDQDIub2Mm2m6+kJN3o8YjFV9c7Iqd6Z/HwZ3snBciqKAheCdOFzrQ/A5
1BFvSau/CohFz0csLxn2zztFn4Iuzr5hiJoyCCyXRlKxQTiA7CUW0yXAyPBASawq
viPwQOw5slw/I63qTSfjDulTFq9Cew==
=biEU
-----END PGP SIGNATURE-----

--4zzkf5nqomhz2w3x--
