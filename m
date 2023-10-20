Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87EC01A5B4
	for <keys@linux.kernel.org>; Fri, 20 Oct 2023 12:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="NLYvVTm1"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAE50C433C8;
	Fri, 20 Oct 2023 12:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697806736;
	bh=0rYr3f+V02PugeI+iTpf2Owl7mnPHHCtVCY7KP5Mc/k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NLYvVTm14ftWY4+r82FD0LCr+CSvdnRn/14ovMVMqdE1BJWyEU+1vkzZ4vwZUUSUf
	 spHshHWiDkytVkNHyAp/+T6IngzvOP16LXi9RB7jXai3ESGsGmKpbsg/k0+eUlKufq
	 wzgyZpIk6cESQ4TR3X2OyM/f+I2WEw5Da8/gGeIE=
Date: Fri, 20 Oct 2023 08:58:54 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Kent Overstreet <kent.overstreet@linux.dev>
Cc: keys@linux.kernel.org
Subject: Re: gpg key
Message-ID: <20231020-reversing-ferris-cca1ed@meerkat>
References: <20231020071932.nrkp44zt74djppun@moria.home.lan>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231020071932.nrkp44zt74djppun@moria.home.lan>

On Fri, Oct 20, 2023 at 03:19:32AM -0400, Kent Overstreet wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
