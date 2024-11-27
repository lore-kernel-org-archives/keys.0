Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC31433A0
	for <keys@linux.kernel.org>; Wed, 27 Nov 2024 16:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732723334; cv=none; b=McIYpT9wNKuv9xi+Tn6Z1Z1EYVeAez/rNa3Jonhhh9OyVCtkIYpke76fANbLryWYeKtcsNKvan+JxPPMIQMWGvkhdW9aKdh1RNeuMT5vP5webLe1CSK1OlXcfBPrItOvY+Fsox/u28MP/kEyutBcc9LJZ8GnF7kfrgekh3pufOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732723334; c=relaxed/simple;
	bh=YCDLFNGXCfYqaVy1uNzqtBd10N6ylCe6UxNSA9O4TE4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nAAQvVhPfFd6+x15ubwS8c/EADUB/qwmvQ0GeuhRrlBPHdG5z8XhRbR0T5cVKDJq6pPZjdu51UmEkGP3Pku1046H/TwSmY+nFcxkxwwYnh4e8Ii9JMR6vYq1/tlGx1sFC75V0tzU6q65iHaTkSu4QQSZtcVW5qfXrW2cn19n/bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=csvITP7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="csvITP7J"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDECDC4CECC;
	Wed, 27 Nov 2024 16:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1732723333;
	bh=YCDLFNGXCfYqaVy1uNzqtBd10N6ylCe6UxNSA9O4TE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=csvITP7JNYd5tW3qRBBxOjI0teG2nNr/EiZiuVTzbQ4DL/5WkAjWjrkg6izJ3ap/B
	 h/IvHaGm82foeqUifXaaGCtwU+QfQ9fMUWFjJTOxhmyQ5b0JKAavdElb2CKI3gAbya
	 xSGi/9XGPirGMBbnWJCMg3mI+NloKEgVUKCsbrIA=
Date: Wed, 27 Nov 2024 11:02:10 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: keys@linux.kernel.org
Subject: Re: Update AB5FEB886DBB99C2
Message-ID: <6lba6hiolq65coivbzg4znlc2wc7zmax4saleg3e7ndspsxigv@qhg5pg2ypygz>
References: <b526faf1-896b-49a8-8f28-531294066583@wanadoo.fr>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b526faf1-896b-49a8-8f28-531294066583@wanadoo.fr>

On Thu, Nov 28, 2024 at 12:37:32AM +0900, Vincent Mailhol wrote:
> Hi,
> 
> I collected a few more cross signatures. Could you update my public key
> with the one attached? Thank you.

Updated, thanks.

> Actually, I also wanted to confirm one thing. I uploaded my keys and all
> its cross signature on keyserver.ubuntu.com:
> 
> https://keyserver.ubuntu.com/pks/lookup?search=AB5FEB886DBB99C2&op=index
> 
> and so, I was expecting those cross signs to be automatically
> synchronized during the periodic update. But it did not happen.

Indeed, looks like they don't give us the third-party signature data when we
ask for key updates:

    $ gpg --list-sigs AB5FEB886DBB99C2
    pub   ed25519/AB5FEB886DBB99C2 2024-06-01 [SC] [expires: 2029-12-31]
          ED8F700574E67F20E574E8E2AB5FEB886DBB99C2
    uid                 [ unknown] Vincent Mailhol <mailhol.vincent@wanadoo.fr>
    sig 3        AB5FEB886DBB99C2 2024-10-27  [self-signature]
    sig          0B0244C40D0D431C 2024-11-05  Shuah Khan <shuah@gonehiking.org>
    sig          EBC26CDB5A56DE73 2024-11-04  Steven Rostedt (Der Hacker) <rostedt@goodmis.org>
    [...]

    $ gpg --keyserver keyserver.ubuntu.com --recv-key AB5FEB886DBB99C2
    gpg: key AB5FEB886DBB99C2: "Vincent Mailhol <mailhol.vincent@wanadoo.fr>" not changed
    gpg: Total number processed: 1
    gpg:              unchanged: 1

I only get your latest signatures when I import what you sent in:

    $ gpg --import keys/AB5FEB886DBB99C2.asc
    gpg: key AB5FEB886DBB99C2: "Vincent Mailhol <mailhol.vincent@wanadoo.fr>" 3 new signatures
    gpg: Total number processed: 1
    gpg:         new signatures: 3

This is normal, though -- very few keyservers still provide third-party
signature data after the attacks on that functionality a few years ago.

> So let me ask: what type of data are actually synchronized? Is it only
> the sub-keys and the expiration dates? Or is there a way to upload the
> cross signatures somewhere to have them automatically synchronized in
> kernel/pgpkeys.git during the periodic updates?

The keyservers can really only be relied for publishing things like:

- new subkeys
- new uids
- updated expiry dates

For third-party signature data it's best to send an export to this list.

-K
