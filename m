Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9D03FD1
	for <keys@linux.kernel.org>; Fri, 11 Apr 2025 15:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744383719; cv=none; b=eAwmNnsmbrvQ9tmczm3MzvJidw6mQCwevu6uCPw4McoHsB2SEmsZ8JE69EOp4GJ2mzngRusUv9qAEyrDMuRD8ExoNk/T5vKU554J8pvr7xBnP5F/eHs66NQYrKc2bFAOH2dQ0CDTk5NiENORRWA2wro/3IGxmQ6r+wKJQIVikZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744383719; c=relaxed/simple;
	bh=QuDIzc3mQwbSz1YF9lBgQfnbOI9ypvdUQFIPU6+ufsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ahOh6peKWPXmJ4px+urxrMALESBzZqbHmzNvkwq4AG8Lp57WQMs+PtchEY2GeqT0Y+3o9jH5YKeV9Tg8yDfQTI94Nazz//VbbpJMbLZzMbbEsEwIV2lwFsIwtxKFfiJyFX7lOURFNUI8rFdzPbiMorXtf61WVLs3YxPclqe7Eog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Received: from trampoline.thunk.org (pool-173-48-82-137.bstnma.fios.verizon.net [173.48.82.137])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 53BF1rVq020087
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 11:01:54 -0400
Received: by trampoline.thunk.org (Postfix, from userid 15806)
	id 7C2F22E00E9; Fri, 11 Apr 2025 11:01:53 -0400 (EDT)
Date: Fri, 11 Apr 2025 11:01:53 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
        keys@linux.kernel.org
Subject: Re: Update key expiration date for tytso@mit.edu
Message-ID: <20250411150153.GB648081@mit.edu>
References: <20250410143455.GA327426@mit.edu>
 <20250410-simple-gregarious-beagle-126b4f@lemur>
 <sgntx3uys3zayto7jczmbmixlvqnlqoi7fdhyrbf5sszg2wjlf@nigvacgc2v52>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <sgntx3uys3zayto7jczmbmixlvqnlqoi7fdhyrbf5sszg2wjlf@nigvacgc2v52>

On Thu, Apr 10, 2025 at 05:40:28PM +0200, Uwe Kleine-König wrote:
> On Thu, Apr 10, 2025 at 10:43:14AM -0400, Konstantin Ryabitsev wrote:
> > On Thu, Apr 10, 2025 at 10:34:55AM -0400, Theodore Ts'o wrote:
> > 
> > Updated, thanks.
> 
> This is rather odd. The commit you created indeed updated the expiry
> date on the key, but it also dropped lots of signatures. If I repeat
> importing Theodore's key, the keys are not dropped for me. (And that's
> even though I use a gpg version that is affected by
> https://dev.gnupg.org/T7583.)
> 
> The graph before the import was just "Linus -> tytso", now it's
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/D36F769BC11804F0.svg?id=3dab90be2abbe5e36edbad698070ff390ea3f886

Yeah, that's a ltitle unfortunate, since I was originally one of the
initial 4 "trusted introducers" when we were setting up the kernel
keyring.  So dropping the signatures might affect some folks being
considered trusted by some GPG configs.  I imagine that's much less
important these days, though....

							- Ted
