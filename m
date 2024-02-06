Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D2D1339B6
	for <keys@linux.kernel.org>; Tue,  6 Feb 2024 15:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707233786; cv=none; b=Cm+/01uwzvHqPGBPRpHWUmy8HTrMXd/Qz3798El5+zRg1AdnKyKMwnX59ZxNsz0Ya+cQgAbJ0DjOS4Sh0x8ZyKMtz7OsMGmU4aV8PHdjwaiH7q/ekWdzopiC7+w2g8Ze5//DLy5gkCXwieKSHnmCbOcrDjbW8Rg0sw3hbwDGfyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707233786; c=relaxed/simple;
	bh=fX0FfXEt9rR6vgc9/igjO4ErC72mbntCvXLDh8WLEa0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WPJ344DvPaQRZg5nb/GAvT+Uq2I6OJ8xEL+ifZOcQVq9k/sju2zdrur9mZ9uOZ4w1djL8PlzUBGiKNlzbBEnsFEHppeITKzOCYoRrxLeqeLnpXL348q2cBVvlH9TPguKWCKX/g97SswdF+m/ghLrvj4KTg9Gw+jd37wvQL1KAr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=ihfP+qgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="ihfP+qgB"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38B75C433F1;
	Tue,  6 Feb 2024 15:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1707233786;
	bh=fX0FfXEt9rR6vgc9/igjO4ErC72mbntCvXLDh8WLEa0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ihfP+qgBH1SkFtiuvMkl8/PPPFdPsQ69T3YlkqotcFAG5+GvEojg8xYbSmioa+Mv7
	 pfP8nUYf9jUUD7S3T09MIb/wYDhxX3hG5PTYQFyjT8z4EHgRsHUSQ/RPAXCO3GbfmL
	 XTa8sU31J6EejSVXbrfkoaXE07uMbtvuNi6HnEL0=
Date: Tue, 6 Feb 2024 10:36:21 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Andreas Larsson <andreas@gaisler.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Andreas Larsson
Message-ID: <20240206-opalescent-guan-of-support-638b1e@lemur>
References: <b355c6a9-2090-4e59-bfef-0528a97c4783@gaisler.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b355c6a9-2090-4e59-bfef-0528a97c4783@gaisler.com>

On Tue, Feb 06, 2024 at 10:28:11AM +0100, Andreas Larsson wrote:
> Hi,
> 
> Could you please add my key to the kernel keyring.

Added, thanks.

-K
