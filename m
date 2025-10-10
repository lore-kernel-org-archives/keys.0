Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEF1287268
	for <keys@linux.kernel.org>; Fri, 10 Oct 2025 14:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760106471; cv=none; b=VZeu+c/RXWk3CY9uPskshEcmiuCiMb7zyR82mRbbpvSy5p9uNdmqpmMKEZjzaMuQ2YAPBRh9ex0iakCcrIpWFciNA9kbvfv5jRjwnoGmvZx/zpPdmkfxOQIDABZ/mE3f0GtRaqYjqLqEadn+6OGCSMFIKc6j4cXLImrk1Lj2i90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760106471; c=relaxed/simple;
	bh=8cb4T9fzMltnh0WKLG8D8f/YnRnkyxROVlU52ut+Ai4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LYHWESl5Ufq1q6xfuCoKW2pfEie7/Y0Dc6WHqHx7CLEUngm+gIIvQnF7YuZWEf1SRBFRsT5teNcRzNr7kFNXC/ho9aPgODrwacRSyVwWuvvvTea9T5LIvoyS6FS9007vvDbw0/6D+AOvOvP9TijPIVSIOZDBLvk0MMC7l+F/wbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=i8riMOfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="i8riMOfU"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4775BC4CEF1;
	Fri, 10 Oct 2025 14:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1760106471;
	bh=8cb4T9fzMltnh0WKLG8D8f/YnRnkyxROVlU52ut+Ai4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i8riMOfUhkOknrod132NQOVn7o1+bCPWq0ZzsXb23H/XZgpLSBzE7w2LGf1sHQIZx
	 0+z84vdpKsp+70rjeYDC00nVfxFgLU1DFisx3LGlzU5Rt88TGrgvELffTZlUhlB0MA
	 g4a9z0XpfaIj0Wyqt8069tGAOiqnkYXLOcH5g0EQ=
Date: Fri, 10 Oct 2025 10:27:48 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Geert Uytterhoeven
Message-ID: <20251010-ludicrous-aspiring-orca-a097b0@lemur>
References: <20251010100014.217076-1-geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251010100014.217076-1-geert+renesas@glider.be>

On Fri, Oct 10, 2025 at 12:00:14PM +0200, Geert Uytterhoeven wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
