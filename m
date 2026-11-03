Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793707184;
	b=wNlH6PbK9E9ViyNCw++4nVA7pJ8vCklqtRVOb2inkh0En+pmEW6QkUl0I0lX6UHPo2bG
	 p4n85ZKqlSgJH0Uz5eWIqX0LSHsv7r9fMchpH21Q5d3IYpcQPLRtnEUEGOwrIA8BMN50H
	 VGMoJtRMzTe5EXOUib0FzLaZ7IFH2LJ6rP9upEy7xbJyTCBfKYcYEpFDB6+q4bwVfDWf4
	 Vdrsdam+4UcFqVkHwiFHeAnkS6g2QikY6Wa4BgApXvT5UjV6cdbdn1KdP0ErQz4Ouu2bB
	 EWI7k8+Gn+2KvhqZwd5gmtNWL4Z9siJ2bay5PEvLwq4R0OoLFzG1hZDQaTDRrQ2mX9Q==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793707184;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Forwarded-Encrypted:X-Gm-Message-State:
	 X-Gm-Gg:X-Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=5JfnbrSiJxQGxenlUrdPJn3TNgpJkikU6au9FLt3x1w=;
	b=3ouK9vd0kIURD7umJBQgige3ScUSle2jHM4SIRB4/uVhdkVE3yKHOz7MC7+hg/p4Noym
	 5s/HXegzq/rlhu0FcpD0QuJTMa/bxa+WX+cIKVwctKZyLU/26ZfuXgEY/qis18YX6U8Pw
	 q2h3Xpm8f98Px0BEgxYyxR+xyeMNroIoaYIW1TRh+SSUYuThQrfZkL7xqt7V4B0dDm7tb
	 s7BBD/i0k50gQjLKg3v5XeEwirev8IGdzG3l/kXhX8CDABM6DzDoRl5AjZKHhzV1/ncqy
	 s3z+Imo+GFb5hPk/zE6X7YM9+MQWEEGi/iyJoc6IqDXLm/JJCSyBn2e1XILE75yGTCQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b="an/K0lcF";
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35612606A330
	for <keys@linux.kernel.org>; Tue,  3 Nov 2026 11:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=an/K0lcF
Received: by smtp.kernel.org (Postfix)
	id CB7431F00A02; Tue,  3 Nov 2026 11:59:43 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.128.54
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793707183;
	b=bB8icsefN2JUoNO9NHuNJAWaYDwIERDf2PJKVdKN6uPcyw1OyDBhocGRICt/eru6ooHT
	 JTJYg+UN2PuEJnhuGodWiUOAklyB6Q8iOlu2/q2DOvdIL6Sk8Dn1U+wfz0xpUqSeOrfdL
	 y2FN0yXyAYSVeVgjvwpmcziWma/Ausmuordo405kDexz2LCYkW2Tms0Wk6WN/t+ScfMOX
	 iLfI/YugbS8AqeVc5d8WqqU71vwvZge5XDsQHhlqkkDssg0G0sG1zJ9NPG/h+ae9SGu9S
	 zIfaSCz4WDuBXYY6LhiFl215d/QWU/lNA+ycI2X5xdQExJ4SEqeIXEm4+2l1T2jQACw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793707183;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=5JfnbrSiJxQGxenlUrdPJn3TNgpJkikU6au9FLt3x1w=;
	b=B1b7cC312K62zFzK4NsFskcEhH0pG4jNpASIr5h5tYEU6Gxq8JqzkiyC6mNT0Il+0q0X
	 D5tid61tcbGxvGjtmT4w6s2TE2/aSFepcg+J2kB2uDNF4m6NHNnbo+5JkYdc6oUghPF5w
	 J4G2+g3LEfC0E0YGZaEw4a4/suqIxUMeNxlHOFWW2b4OU4vz8F+HxK7f+gIocZV3tU4KC
	 KrwuCNAwgbq+jMXaetNzJJk0kL4HhZF3/rV1K3adnPWsaRYM58Yi/n4MDrmPKeRNcv1F0
	 9veHIgMp06x8nIRnEiv8RD6PWI4apf/CLvoKAGKnnwiPkt1XcCGcKV528PLDgtcIEYw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b="an/K0lcF";
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.128.54
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 413A31F00919
	for <keys@kernel.org>; Tue,  3 Nov 2026 11:59:42 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=an/K0lcF
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 413A31F00919
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4a20bde60a0so32296245e9.3
        for <keys@kernel.org>; Tue, 03 Nov 2026 03:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793707180; x=1794311980; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5JfnbrSiJxQGxenlUrdPJn3TNgpJkikU6au9FLt3x1w=;
        b=an/K0lcFTh43gle4cCYnlhf5R6npJFfgb5sUsW3a9XJq8XTs7nqitfRYO2dKhdSmiF
         bFvHfp0KI6+uzsB4SeDj0xd7dtIYX6qUqeTX5fv3fNSFkytRFNnOd6mfd96pCDiJs1R6
         Fj9tXyJzZcNfLBYTIPZesf+fU+dOxqSoJ57AapVZZfCONcIPoDSMxiBOzB6NAb0s19vh
         57i87nptjTKFnbFUeeBVmnb/7Y99FbD1Nj+YjsUXi58T6SnFEtBoB7DU49lvIl67Yd/3
         X2PDHnC4XPS0hosrYre7djGYs9Is50wvZyG6L6CTVBmTA7oTa3VD8WUpvJZyF2dYCcPn
         cf6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793707180; x=1794311980;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5JfnbrSiJxQGxenlUrdPJn3TNgpJkikU6au9FLt3x1w=;
        b=i4uDYLGuvI1xL689ypdh7lTjTYTfl3/NyOTQaZj+6GXxWXuMgKc8SPSdyLPheFxzpC
         1gr1Vz5P2F5IlthcFhItVaWihnC/+OKwdXZynWLdexoaQEy7T4H9SqQRyUsPsrgT7ahf
         S2VgO4rot3OQyGjms1z+MG2mmjjm3Tg0MLPfAGA7F1cS4xOa6wZzZ33rA3y7OUiW18Z3
         fGMcGmHeLK5Ru+2T830vIrs9t/IBi+99q37BfmY+sra2MAlfR8vE+JEVigfSlHar5tnI
         qpzS1+/DhfluyOhPT5RG3KyzwB/Ot6Dh5MDCXNbcCE4tESKvGBTo7zDjFV9jHOtRkNIF
         EkoA==
X-Forwarded-Encrypted: i=1; AKwUvBysMTPMb1dhpisewre+NCOqQefSgUyv1ziiD1w73uhscQuNCBK7UMR68Xxc+h9ezxG7Tjpv@kernel.org
X-Gm-Message-State: APuU4Z99+fx5SEse8CGKlB5qPuvUfcHYgzlweEmlNps9aCQcV/ICuXWe
	83fjnhxngs25yL2DxopLJxYOeCm6s1qZ5BYOxVlEspAa22iLONCRWxWFjdNOAHecECgFCsCcFgA
	ubBJeAXI=
X-Gm-Gg: AYBFou2ji9prikYFg50GCnHPZrxdU7e1yBcK6QhnY/AbKKUm1HDEN45s8VDh6bu44u+
	LQZxN2sTV9T2+dYHU0nmmjUWal2in9ucxPAHpOkiKWrgcJ7ueKge+kKNNrYmuCUhjp+HCnEHRhJ
	gFlcRjI1K/sNTu7Z9mMLfaYx3M7LWfqLLNjgf6QD4PA1LBLWl7p+rudewbfRnE9WaC2KVH6QMKT
	txSm9WVTVUOP6ykq5GfK2WCM8xL+VO4nZgzXcq6BXDYKIN4c5fgGWJXFgz4ytpS7CLBP6uEJkWn
	Q68XeO7PbC5jDXvkS1ZXDqf6G39yDgKkw/BVcD9FrGZ0EnWFkLV066mrIflMRo6LvANLx1mtzMc
	NT0uyzDUsX2xjDLzt/e9Hmm5QIwipNIqhDu+KYfSbt7HVJczAeJX5SkxIoymENkyLFfikD5277h
	D8zsd2N6l0ed3TnX8HRovGAYr36lXOvsf/Eps8UCQ5T/kwsAwLkl6HsB+COTp5AY1Gn+LX3hbY7
	8Mk4R7y9k7lmyQoP9p+qn+fun+g8JKwfonBBqqZS7LjtiWzXpZfG0IBa5E1OMjUg/beR53X3laD
	O9VDDn4cjNnjTrv/Q+kh32w+aOLxesP2UfvgP75zxyLe0AOX7Z0VrlRgKbqK3kMFyOcw1N+r+Cv
	N93DQjDB/Y22QphBEwQXGomZFMVmsbXPH5zA=
X-Received: by 2002:a05:600c:c171:b0:49c:fa20:cbfd with SMTP id 5b1f17b1804b1-4ad739eb30fmr212682045e9.20.1793707180283;
        Tue, 03 Nov 2026 03:59:40 -0800 (PST)
Received: from localhost (p200300f65f19a9048e0e65dd41210f6d.dip0.t-ipconnect.de. [2003:f6:5f19:a904:8e0e:65dd:4121:f6d])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4ac0a66caefsm269988175e9.5.2026.11.03.03.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 03:59:39 -0800 (PST)
Date: Tue, 3 Nov 2026 12:59:38 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Alan Maguire <almagui@kernel.org>, keys@kernel.org
Subject: Re: updating key to more stable kernel.org address, revoking
 alan.maguire@oracle.com
Message-ID: <aunK1fbd06aZGrui@monoceros>
References: <bac10e4b-f1c0-4148-bdb6-a2c0c6b21d90@kernel.org>
 <20261030-massive-mindful-kiwi-f3ba1f@vache>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7vcanzaq2xzpqxcp"
Content-Disposition: inline
In-Reply-To: <20261030-massive-mindful-kiwi-f3ba1f@vache>


--7vcanzaq2xzpqxcp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: updating key to more stable kernel.org address, revoking
 alan.maguire@oracle.com
MIME-Version: 1.0

On Fri, Oct 30, 2026 at 04:30:16PM +0000, Konstantin Ryabitsev wrote:
> On Fri, Oct 30, 2026 at 11:33 AM, Alan Maguire wrote:
> > already uploaded to openpgp, sending here too as per process. Thanks!
>=20
> Hi, Alan:
>=20
> Thanks! I've added your earlier update with the new expiration date, but
> not this one:
>=20
> Your key's only trust path into the kernel.org keyring is Konrad Wilk's
> signature on your alan.maguire@oracle.com user ID. Revoking that user ID
> also drops his signature, and the almagui@kernel.org UID has no signature=
s at
> all yet, so your key would fall out of the keyring as a result.

If I look at the output of

	sq inspect --certifications < keys/8A7AECDB2E53B836.asc

there are already two signatures on the kernel.org UID. This emits two
errors, but that's due to the certificates by Konrad Rzeszutek Wilk and
Boris Ostrovsky having SHA1 issues.

These two signatures were not part of the key block in Alan's mail
though, but on my side the import still works fine.

Best regards
Uwe

--7vcanzaq2xzpqxcp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrpzKcACgkQj4D7WH0S
/k7bHgf+Of/0juvX4eJ/SBKeEaJi+dSjNtkR96YLI3koLPeOrrjXpG5jgcvf9C/z
JAM+YcP6YJ14SeeKGAO3uep9ZXvJZYIMYRGg2uaFlgTuOvJzHfBiFMD5Ow4KWYI+
McGCaA2FyMpydRgqkNZfBcuPV2AwW5GDXm5TuqDSL8v55HaJsB53ulPoFHWqSjes
UGpnMo2tFMaAoyegY45IApOJN3UOYDFF7W4V5K+T4Ab+wz0FtMDxx+3DAYGeLYr3
V4gceILlml/rERIWnjhpbD7+hdkhlsskegZKJ7Evg4rVHeeHhhSBNHjaIlCFPcjF
/H1mAnQv1SddS9uL6t4gvFsZ5RWOyw==
=gz0S
-----END PGP SIGNATURE-----

--7vcanzaq2xzpqxcp--
