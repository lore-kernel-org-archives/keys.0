Received: from out.smtpout.orange.fr (out-13.smtpout.orange.fr [193.252.22.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B55EAC5
	for <keys@linux.kernel.org>; Thu, 28 Nov 2024 05:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.252.22.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732772163; cv=none; b=HD/8Y5rSnceCu9IX8D8JviEMu0DRX8P/J6nmmSbmBsmI214WyFL3A1afjnG5f92WvnFY23wnQMfCPmwt7/Qt7hjzc3V4MuQQww4O+aiAl+pJjuzR3JXX7VzoatKGwubeCkpPgwfcxDko1i9oTm4maMLom2spimxB5q5xxzDApW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732772163; c=relaxed/simple;
	bh=qhwUAInyTfk4llTeo8iuqqMXJsSo/H0kW4DDRJzvwXY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lnO6+DTk6GlxDbDV6nY13rcY7P2bv6qcqcaKc7FDKAI5kNxDy9ZXzQ851a+VB/wdxXI+VNVxrPcdFeV0zSCg+A2G4OAmv+FLWr4tlvz/tLe7k4YGnikp23zCBagE5eFIoulGrDEHCXpUMZh7Y96sYINzo01WDc0F9B4xlaFe+gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr; spf=pass smtp.mailfrom=wanadoo.fr; dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b=Y605PfAf; arc=none smtp.client-ip=193.252.22.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wanadoo.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="Y605PfAf"
Received: from mail-ej1-f54.google.com ([209.85.218.54])
	by smtp.orange.fr with ESMTPSA
	id GXAwtXuirnKDzGXAwtikLr; Thu, 28 Nov 2024 06:34:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1732772091;
	bh=wyjzHSo3Rktm1pC+vMR/LCrZz64Y1DHGTBctM8ZpSng=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=Y605PfAfr2lC3leCCDaCMNUSc5sQz7uLH950bVYRT3Rw5++aA40aUSb0yzmnSiwBl
	 40UJ/LW/gRSfXLzNatHbaYuJ3eT2CKwHuBwFvDHKH59X6PhqqvyJRC+O75sfCMs+Rz
	 f9Fv20mC5XnhgynAQX6RMFJ8WJHk/LT6h4CK4vEhtJ9E62zz3UfHFPTyppNlPrLwth
	 i9VTRq44qz54A88r2Y91ecg1W+r9bMKO2l9BljtxguYoZZWFU9lc78U6ld9RmRR8We
	 QKaooxiY+oeiDJwZ4XA7DQg6M+I6oGE0CI7pLfWSCIiLl9XokKhzk771tmrV/jtz1C
	 lt0lgRDeWgQ1w==
X-ME-Helo: mail-ej1-f54.google.com
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Thu, 28 Nov 2024 06:34:51 +0100
X-ME-IP: 209.85.218.54
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa5302a0901so46376866b.0
        for <keys@linux.kernel.org>; Wed, 27 Nov 2024 21:34:50 -0800 (PST)
X-Gm-Message-State: AOJu0YxYyBdXqBI9YX885bI31yyd0xwwwOsc1kQJ/Ibo5vSd80gEq9j6
	sBns+r915vLHidLe2BTO0M7GxVKRQC6vdIHFRoqEGIMURPx+gDuJ5jS/8TcCkgRIzfQ5Dq5IVu7
	b7LXxS7M/IK5Px0ACuv+w4C2LGpg=
X-Google-Smtp-Source: AGHT+IF8KdRjgK9adk7P7k7D2PTDd8xEzp1Ufp6kEC+kZPMjQsz30mYPuTmOdfbrDAhRhAhvF2c8Dj3BvMdvdZAYFVc=
X-Received: by 2002:a17:907:7808:b0:aa5:2d9a:152c with SMTP id
 a640c23a62f3a-aa580f1e03emr405485366b.13.1732772090589; Wed, 27 Nov 2024
 21:34:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <b526faf1-896b-49a8-8f28-531294066583@wanadoo.fr> <6lba6hiolq65coivbzg4znlc2wc7zmax4saleg3e7ndspsxigv@qhg5pg2ypygz>
In-Reply-To: <6lba6hiolq65coivbzg4znlc2wc7zmax4saleg3e7ndspsxigv@qhg5pg2ypygz>
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Date: Thu, 28 Nov 2024 14:34:39 +0900
X-Gmail-Original-Message-ID: <CAMZ6RqLPPZyUqA-j5GegJ_Mk8tM7AFF7Ud=eD5aRDS9CUjGqHA@mail.gmail.com>
Message-ID: <CAMZ6RqLPPZyUqA-j5GegJ_Mk8tM7AFF7Ud=eD5aRDS9CUjGqHA@mail.gmail.com>
Subject: Re: Update AB5FEB886DBB99C2
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu. 28 Nov. 2024 at 01:02, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Thu, Nov 28, 2024 at 12:37:32AM +0900, Vincent Mailhol wrote:
> > Hi,
> >
> > I collected a few more cross signatures. Could you update my public key
> > with the one attached? Thank you.
>
> Updated, thanks.

Great. I am all set now.

> > Actually, I also wanted to confirm one thing. I uploaded my keys and all
> > its cross signature on keyserver.ubuntu.com:
> >
> > https://keyserver.ubuntu.com/pks/lookup?search=AB5FEB886DBB99C2&op=index
> >
> > and so, I was expecting those cross signs to be automatically
> > synchronized during the periodic update. But it did not happen.
>
> Indeed, looks like they don't give us the third-party signature data when we
> ask for key updates:
>
>     $ gpg --list-sigs AB5FEB886DBB99C2
>     pub   ed25519/AB5FEB886DBB99C2 2024-06-01 [SC] [expires: 2029-12-31]
>           ED8F700574E67F20E574E8E2AB5FEB886DBB99C2
>     uid                 [ unknown] Vincent Mailhol <mailhol.vincent@wanadoo.fr>
>     sig 3        AB5FEB886DBB99C2 2024-10-27  [self-signature]
>     sig          0B0244C40D0D431C 2024-11-05  Shuah Khan <shuah@gonehiking.org>
>     sig          EBC26CDB5A56DE73 2024-11-04  Steven Rostedt (Der Hacker) <rostedt@goodmis.org>
>     [...]
>
>     $ gpg --keyserver keyserver.ubuntu.com --recv-key AB5FEB886DBB99C2
>     gpg: key AB5FEB886DBB99C2: "Vincent Mailhol <mailhol.vincent@wanadoo.fr>" not changed
>     gpg: Total number processed: 1
>     gpg:              unchanged: 1
>
> I only get your latest signatures when I import what you sent in:
>
>     $ gpg --import keys/AB5FEB886DBB99C2.asc
>     gpg: key AB5FEB886DBB99C2: "Vincent Mailhol <mailhol.vincent@wanadoo.fr>" 3 new signatures
>     gpg: Total number processed: 1
>     gpg:         new signatures: 3
>
> This is normal, though -- very few keyservers still provide third-party
> signature data after the attacks on that functionality a few years ago.

The reality is a bit more nuanced. If I add the --verbose option, I get:

  $ gpg --verbose --keyserver keyserver.ubuntu.com --recv-key AB5FEB886DBB99C2
  gpg: data source: http://185.125.188.26:11371
  gpg: armor header: Comment: Hostname:
  gpg: armor header: Version: Hockeypuck 2.2
  gpg: key AB5FEB886DBB99C2: number of dropped non-self-signatures: 6
  gpg: pub  ed25519/AB5FEB886DBB99C2 2024-06-01  Vincent Mailhol
<mailhol.vincent@wanadoo.fr>
  gpg: key AB5FEB886DBB99C2: "Vincent Mailhol
<mailhol.vincent@wanadoo.fr>" not changed
  gpg: Total number processed: 1
  gpg:              unchanged: 1

So, the client received six non-self-signatures, but decided to
drop them. Which is consistent with what the documentation has
to say:

  The default list of options is: "*self-sigs-only*,
  import-clean, repair-keys, repair-pks-subkey-bug,
  export-attributes".

Link: https://www.gnupg.org/documentation/manuals/gnupg/GPG-Configuration-Options.html

It is true that many servers do not provide third party signatures
anymore, but keyserver.ubuntu.com still does. The attack you are
referring to is, I guess, the third party signature spamming in which
the attacker would upload thousands of dummy cross signatures to cause
a denial of service.

But this attack does not apply to kernel/pgpkeys.git because we
operate in a closed circle. This makes it easy to filter out any third
party signatures which originate from someone which is not part of the
kernel network of trust. This is easily controlled by passing the
--keyserver-options no-self-sigs-only and --keyserver-options
import-clean options. For example, if doing think from my old key:

  $ gpg --keyserver keyserver.ubuntu.com --keyserver-options
no-self-sigs-only --keyserver-options  import-clean --recv-key
AB5FEB886DBB99C2
  gpg: key AB5FEB886DBB99C2: "Vincent Mailhol
<mailhol.vincent@wanadoo.fr>" 3 new signatures
  gpg: marginals needed: 3  completes needed: 1  trust model: pgp
  gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
  gpg: next trustdb check due at 2026-11-06
  gpg: Total number processed: 1
  gpg:         new signatures: 3

The signatures which do not match a valid identity are silently
removed. --verbose is needed to get the message, e.g.:

  gpg: removing signature from key 735AA2F46136D956 on user ID
"Vincent Mailhol <mailhol.vincent@wanadoo.fr>": key unavailable

> > So let me ask: what type of data are actually synchronized? Is it only
> > the sub-keys and the expiration dates? Or is there a way to upload the
> > cross signatures somewhere to have them automatically synchronized in
> > kernel/pgpkeys.git during the periodic updates?
>
> The keyservers can really only be relied for publishing things like:
>
> - new subkeys
> - new uids
> - updated expiry dates
>
> For third-party signature data it's best to send an export to this list.

Please note that I have no issue with this approach. I just think that
downloading the third party signatures as part of the periodic update
is better because:

  1. it is less work for you
  2. I do not see how an attacker would be able to abuse this

But I do not mind manually submitting changes. Whatever approach is
used, I would like to suggest updating the documentation to clearly
specify what has to be sent manually and what will be automatically
synchronized.


Yours sincerely,
Vincent Mailhol
