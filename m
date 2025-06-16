Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947D926FDB7
	for <keys@linux.kernel.org>; Mon, 16 Jun 2025 08:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750063614; cv=none; b=P9Jw5y4WqTiYHX9CCwRhWSbFRZVg6dKPzzIjBmyyWDV0SyLZ3CnyvxNoxup6PSoSxyjmEKwtoyNzs6UrQLqR43n/LeKnLzuOz30omnrpRdZDaRG/dFyP89IyiFJ4Pqr436D4qYDiMqrpEmu7lgII8LZJAOsOdT+iWvDCKrYFZa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750063614; c=relaxed/simple;
	bh=Q9t3dQ981crsTmtbIuvWByRQ791DxEn03JYINNAGpTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dufaP2k8mpd43aZnIljzbMEuXZqZpjvdK9HAV8fUEciSe1Inr+KiPXaKFwd7D8/LE/CIhMp0MB2+uG+6Hst+0/wgwdqyzo740PRKr4xLNF2z8Z5Vj5tnldqf8AB0MAeqYaA4gf8Bym21vrqvJT+0Ne6rFwZxx0khY2KeFFjBD+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FUcEg+PF; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FUcEg+PF"
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6095de12d62so894355a12.1
        for <keys@linux.kernel.org>; Mon, 16 Jun 2025 01:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750063609; x=1750668409; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A7ptQTYKtm7BSoPHl5XuXsYNYn0d9LWg9dkCl1zHUik=;
        b=FUcEg+PFVEOVZ4+T5qZT8Gup8zPecsu0ez352GwdL4nwWEksSWx3JHnBflY4CGD3Zs
         4qDATj933WPzcf1ffj/JKqOcoa5+dNHLhnXmsIzsnkXaNz6AkV2z7ZKg1DJan9ac0shk
         4UZTOsL+4rbcw8CDsXSbgyFfAKWZY91Xh5Q+ueVknu8AghpW6LX0IPBuPlH216maC+58
         LyDkOOdHot3mnW9+32HKXHzlh5/kVA7RunTKJWa22tJltnZqsGL0IVGez5XwvqRPucho
         lPAB8vja5rS1ah59dF3a0rPBuT5t7qeW0nO/lrULVO7/NCbsXsAxGxU14Ll7IMXeUTBo
         4nQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750063609; x=1750668409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A7ptQTYKtm7BSoPHl5XuXsYNYn0d9LWg9dkCl1zHUik=;
        b=fL40Qq7KXnwUOR4yAswOZ0IulfHW09ROVLG51tfKP3kjDNBEDfbzt38hyoBjHwARNT
         K/lUjPUIeBXObhOjn/yYooGoVC/pWNOt62volWrJI1Gx66lL/6uiMfj4uvh6h+zkmr52
         fBJ0u5Qsr3597g3ABFFFE+Nvqk/TpweWSfagSgpaT4h4Iln7AiEwS24SLkAqfGbG57qC
         ECLa+aPOyiQcL4FvZYjrapUqNuTOKXM7YveiMB9PgQCu1b0+rD3UV91unDJYJtrCastA
         uC/ef/BHK2xumGi/yl7z4tLo13BhNZsmVFgqFEFUlognW/Q55PjGI+OOL3+TUoeXcIoA
         UlIw==
X-Forwarded-Encrypted: i=1; AJvYcCUOTtO2M0IBwWCKTp1Q9fBr8NzE9lS/22P5b/GMCVkrRKaLfd0Wn72BbvuXiS9T23VwBfLQ@linux.kernel.org
X-Gm-Message-State: AOJu0Yx7puF3XEtmbRCRaaLwQ4ptmu6NC4rC5FHJsmQqG2kBAGTeTwTw
	70dQaZ2wlcw/1S7IR1NRQxBoVPugicwpg2gpYVsK04tc7GkIHyY6z04snmUWzqgqgDM=
X-Gm-Gg: ASbGncv29rwF19jhkBlxC/8chzoYFaAnp7/aCqOE9EXYKi5wqcS59Xij7hayP4snEmz
	IlXN53XQU/LraYZ/iKlhjcAmrKElsGkngeircVk9XWONkzOQBLwtvLyrD6g79//Uth9gQYLqJEu
	Syk8C+qaDHplA6VFOC6SXjeHzVmEmO1F/gYEdFDJD7fZUEgTDX1Q4kcuTRYU5fSARwZ07YAhAhy
	wFsgilU4ChQ3fVmg5vPWe1SgXqSWLEN7yCZnMwZL8GVRFUlyP0gCH8hXNhPTd1guJDOp18iBWJf
	qmfxuYIv93gTgGPPTgXe+x9hQxst7xmnj0Pyz5yb1NviDkJCvtyPELwnzi/oikaKZ5GYR8Rkbvx
	XRsO0d9iV707nDh/9W4UPSZlIfnZp
X-Google-Smtp-Source: AGHT+IHNvjlB2JUahSzqenkLKbhoKInRlkYO+K7ve4AmUh8zlmSPprKRNqNdfPSCOwN/AponvZGqVQ==
X-Received: by 2002:a17:906:6a02:b0:ad5:6e40:9830 with SMTP id a640c23a62f3a-adf4f2539demr933259266b.20.1750063608256;
        Mon, 16 Jun 2025 01:46:48 -0700 (PDT)
Received: from localhost (p200300f65f13c80400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f13:c804::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-608b4aefd21sm5667899a12.81.2025.06.16.01.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 01:46:47 -0700 (PDT)
Date: Mon, 16 Jun 2025 10:46:45 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vineet Gupta <vineet.gupta@linux.dev>
Cc: Vineet Gupta <vgupta@kernel.org>, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>, keys@linux.kernel.org
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
Message-ID: <2bcs4mgkrycgqfydfxt3cucw2cd6vvbpq3snbsprf27fyc72hd@ihikzjxerftf>
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
 <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
 <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
 <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
 <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>
 <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
 <d622b123-1a1d-490f-b008-6e68954b0dda@linux.dev>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="up5dk4zzeubaeijt"
Content-Disposition: inline
In-Reply-To: <d622b123-1a1d-490f-b008-6e68954b0dda@linux.dev>


--up5dk4zzeubaeijt
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
MIME-Version: 1.0

Hello Vineet,

On Fri, Jun 13, 2025 at 11:09:26AM -0700, Vineet Gupta wrote:
> On 6/13/25 02:49, Uwe Kleine-K=F6nig wrote:
> > On Thu, Jun 12, 2025 at 02:52:52PM -0700, Vineet Gupta wrote:
> >>
> >> On 6/12/25 14:08, Konstantin Ryabitsev wrote:
> >>> On Thu, 12 Jun 2025 at 16:59, Vineet Gupta <vgupta@kernel.org> wrote:
> >>>>> Before creating your next UID is suggest you read
> >>>>> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-conside=
red-harmful.html
> >>>> Thx for the pointer. It makes sense.
> >>>> Shall I remove them from existing key and send it over again (I see =
it hasn't
> >>>> been pushed yet to the repo)
> >>> Yes, if you want to do that, I will hold off on processing this reque=
st.
> >> Thx, here you go !
> >>
> >> pub=A0=A0 rsa4096 2013-02-16 [SC] [expires: 2029-12-08]
> >> =A0=A0=A0=A0=A0 397A6E0AE47A85E76B74B08969D7F1DDE28AC25E
> >> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] Vineet Gupta <vgupta@kern=
el.org>
> >> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] Vineet Gupta <vineet.gupt=
a@linux.dev>
> >> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] Vineet Gupta <vineetg76@g=
mail.com>
> >> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] [jpeg image of size 24452]
> > That looks better now. The scripts used to maintain the kernel keyring
> > will accept that key update, however your new primary UID has no
> > 3rd-party signatures. And also note that the signatures on your older
> > UIDs are all done using SHA-1 so they will be discarded on reimport. In
> > sum there is no valid trust path from Linus to your key.
> >
> > It would be great if you could get a few fresh signatures on your
> > kernel.org UID. The guys who signed your other UIDs earlier might be
> > good candidates to sign that without the need to arrange a meeting in
> > real live.
>=20
> Sure thing. I was thinking of asking a couple of my current colleagues (B=
jorn,
> Alex) to do that instead. As long as signers are in the web of trust it s=
hould
> be fine ?

=46rom the POV of the kernel pgpkeys repo yes, signatures from people
within the keyring are preferable. Still better from those who are
"near" Linus. The graphs generated in the pgpkeys repo only consider
paths of length four, so ideally let it sign by someone with distance <=3D
3. Not knowing which Bjorn and wich Alex you mean, see e.g.
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/E2DCDD9=
132669BD6.svg,
my key has depth 3 as there is a path of length 3 (John Hawley -> Ben
Hutchings -> me) and no shorter.

> > Also your key is affected by SHA-1 self signatures on the older UIDs.
> > The respective output of `sq cert lint` is:
> >
> > 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (alias) =
<vgupta@synopsys.com>) protected by SHA-1
> > 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (officia=
l) <vineet.gupta1@synopsys.com>) protected by SHA-1
> > 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (persona=
l) <vineetg76@gmail.com>) protected by SHA-1
> >
> >
> > See
> > https://www.kleine-koenig.org/~uwe/resign-sha1/?certid=3D69D7F1DDE28AC2=
5E
> > for some details. Also
> > https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3=
motyyoo3@7vf7ip6gxyvx/
> > might be good to understand.
>=20
> I tried to fix the sha-1 concern, but ran into some issues.
>=20
> First up I presume this is all pgp2 as I have that alias in my bashrc fro=
m an
> early/old users.kernel.org recommendation.

Not sure what you mean by "pgp2". My links above assume that you use gpg
2.2 or 2.4 which today is usually installed as "gpg" in your PATH.

I'm not entirely sure that the indicated command (i.e.

	gpg --force-sign-key --quick-sign-key 397A6E0AE47A85E76B74B08969D7F1DDE28A=
C25E "Vineet Gupta (alias) <vgupta@synopsys.com>" "Vineet Gupta (official) =
<vineet.gupta1@synopsys.com>" "Vineet Gupta (personal) <vineetg76@gmail.com=
>";

) also works for self-signatures. The test is:

	$ sq cert lint --cert=3D69D7F1DDE28AC25E
	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (alias) <vgu=
pta@synopsys.com>) protected by SHA-1
	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (official) <=
vineet.gupta1@synopsys.com>) protected by SHA-1
	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (personal) <=
vineetg76@gmail.com>) protected by SHA-1
	Examined 1 certificate.
	  0 certificates are invalid and were not linted. (GOOD)
	  1 certificate was linted.
	  1 of the 1 certificates (100%) has at least one issue. (BAD)
	0 of the linted certificates were revoked.
	  0 of the 0 certificates has revocation certificates that are weaker than=
 the certificate and should be recreated. (GOOD)
	0 of the linted certificates were expired.
	1 of the non-revoked linted certificate has at least one non-revoked User =
ID:
	  1 has at least one User ID protected by SHA-1. (BAD)
	  0 have all User IDs protected by SHA-1. (GOOD)
	0 of the non-revoked linted certificates have at least one non-revoked, li=
ve subkey:
	  0 have at least one non-revoked, live subkey with a binding signature th=
at uses SHA-1. (GOOD)
	0 of the non-revoked linted certificates have at least one non-revoked, li=
ve, signing-capable subkey:
	  0 certificates have at least one non-revoked, live, signing-capable subk=
ey with a strong binding signature, but a backsig that uses SHA-1. (GOOD)

	  Error: 1 certificate have at least one issue

If the above command doesn't work, `sq cert lint --fix
--cert=3D69D7F1DDE28AC25E` should do the trick for sure.

> Per your link [1] above I was able to refetch the keys of others, force s=
ign
> them and --send-key
> However my refetched key brought back the locally deleted old UIDs: was it
> because I had not uploaded it to Ubuntu key server, and MIT server where =
I did,
> is no longer functional / used ?

No, the "problem" is that keyservers don't forget. So you need to revoke
the UIDs if you really want to get rid of them. It's a feature that you
got it back. If I fetch your key after you added the UIDs I want the new
UIDs just added to your key. That's what happend for you, too, as there
is no way to distinguish between "the fetcher doesn't know the new UIDs
yet" and "oopsie, the fetcher thought these UIDs are wrong and deleted
them".

> Anyhow do the older/deleted UIDs need to be sha-1 fixed=A0 and then re-de=
leted and
> --send-key to ubuntu key server?

When you re-sign a UID, the old signature doesn't go away, it is just
not considered any more as there is a newer one.

> Or is there a different order of things to do - apologies for these noob =
questions.

No problem. I bet you're not the only one who will have such questions
while fixing their keys.

Also I don't understand all the things about your key yet either.

Best regards
Uwe

--up5dk4zzeubaeijt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmhP2fMACgkQj4D7WH0S
/k4xRQf/SepLLwHyslgCxD/kV/jnQoO9PIxnVCYwjkDj1wJfl4xWnaACAy+QeFkv
iqGtoxJhjQXJuigQhCchPcq7m8BeOMgMlJv71vj+dLV4Y6SbgprFMAPF7gw5Zt2N
XyVY+jFHPWNc0iUi7OrfyGYo22m0yudnI0PJfPMtsOPXXT/d7DydT9G/vCNF006B
768dHuBf2qihs0Pf+uZ5FPzLFG6iDiT8QKQZDVPUSJ0G3elxTakjp62kZu6VLVlP
/eRygWOmeT36RLoKk3pbI3y+nZ+SaOKs+HsaqftCR7aYgkSwDeNbCP09A1H6kQ+o
sFhQridM/TtobChpAXSR17QxVUsRNQ==
=0CRR
-----END PGP SIGNATURE-----

--up5dk4zzeubaeijt--
