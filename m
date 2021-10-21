Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D1C72
	for <keys@linux.kernel.org>; Thu, 21 Oct 2021 05:52:34 +0000 (UTC)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0C0308048A
	for <keys@linux.kernel.org>; Thu, 21 Oct 2021 07:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1634795063;
	bh=Ufw4izv84zYegIGsQ0z32V3B//OklAVu4Ygbw4Wh75k=;
	h=Date:From:To:Subject:From;
	b=PBPPHAV1HFKnLgM/k8fIGsNlUuuEfmC7se8KmLAN+sPIkykmVWOUdYPNd18HLLobY
	 JQ4gVV7yiIZChbeVs5b2GNQaQi5mOFjZhkcuN2tiHhtMtI8wB0wcFYdufQXKqKO/J7
	 RRNcpi47b+6RV+5mrK6TM4AOJWNSn0zvVsheuFViJBH7gccxiVBEubCk1BulMnR91/
	 yk6lsBXW08CFLNWhzZPWh+Yr4RrLS6JK7RvnmF3SS5t6LaBlx7WpMwFltIrjox8zAQ
	 gaiGemXxQkk4BLK4kgS33a4RtOX2MTBsCQR+UL0gkKau5wNMwJDA2wLbR5K/Gntxlf
	 oArwD7cjn5+RA==
Date: Thu, 21 Oct 2021 07:44:15 +0200
From: Lukasz Majewski <lukma@denx.de>
To: keys@linux.kernel.org
Subject: [gpg] Public key for Lukasz Majewski
Message-ID: <20211021074108.6f028961@ktm>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/v0_097=pznKBXW4qcWHa+QH"; protocol="application/pgp-signature"
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean

--Sig_/v0_097=pznKBXW4qcWHa+QH
Content-Type: multipart/mixed; boundary="MP_/5v2kp+HrS2P_nV/k_6NChDO"

--MP_/5v2kp+HrS2P_nV/k_6NChDO
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Dear Community,

I would like to share the export.asc file for my gpg key.


Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--MP_/5v2kp+HrS2P_nV/k_6NChDO
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename=export.asc

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
YaCZaCBpLGNYvzcAbBGulXbtbwnKnZ/pLQ=3D=3D
=3DDfxh
-----END PGP PUBLIC KEY BLOCK-----

--MP_/5v2kp+HrS2P_nV/k_6NChDO--

--Sig_/v0_097=pznKBXW4qcWHa+QH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmFw/i8ACgkQAR8vZIA0
zr1HlQgAmEAcUuRke5oq5K13mxspMFchqMXKE8wUEGUCwPdeXRX1pwBOKf6yLxzm
mJGdcZe7b4jOSEjTG1kBPrR0qVFqzffeR67VleDoyd2brSLhEOFspT+6TIzKQWfQ
VowGq7xDeswBFxJ5c27A7T4GqPVovzOGiSWiAAqzc8jp2eh43ygxa35UcHOflODN
Aps/tPK8jRrWak1qMSReSZwt8zTvBlghqZKVv9FgE3AGTJP8mvh3ve+KAGOTL1F7
XJdk2kksGqvn8gZ4bc0A7ChS8i0u23pEJ0NoHFk9ghUpHIVY2DrufNKVcfDa7DA1
J4PeLnGiBbP9ZgkLDw8mJj+a40K2gg==
=dUQf
-----END PGP SIGNATURE-----

--Sig_/v0_097=pznKBXW4qcWHa+QH--
