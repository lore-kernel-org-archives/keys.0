Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D6B1DFCB
	for <keys@linux.kernel.org>; Fri, 27 Jun 2025 16:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751040040; cv=none; b=iWWl/C5XlJv1X246wrZI/SNcKu2peqdGEQWYTny07c8CZYgeQ82Ess50fP5rgsuIE5SVL6V/8+RK8wUEuGo8rRNRgawv/jmSlE8dSgeFRkxjbhhMc+1ShwS/DMpSn259sk+Tu2I26AP6I6aaKqCrh94jT5SQghTSCX6ayq8Pr/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751040040; c=relaxed/simple;
	bh=26X6PVWePc+cdcPaLNxD9HZ32t2DzS102MSoroiaqWo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fTcVh/z6bDN1mAFDn2W5OLT8+pLpw9UTvcgFRRBMxaCsGzK935AqcBZaqd63Y6+um9uRNWWNeAUWEafFB+mU/uHQy0ow3Z5OqS4k3TlXSp5OFwOr7ocNd3SCV9/A4JniHuSrGykPCpe/f4pwBiuvsMKkALK0Hfwr2y77i5wv+wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=aw53rVXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="aw53rVXe"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4673DC4CEE3;
	Fri, 27 Jun 2025 16:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1751040040;
	bh=26X6PVWePc+cdcPaLNxD9HZ32t2DzS102MSoroiaqWo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aw53rVXeJHuE/p0crSLOevXj56jfvFHvNAYa6jJNAeim1NUMBXALxqXkWvRFkp2A0
	 0ReuVG4oXUCNzTt6X2gSJci9pIu7X4jusfJfVjLMrQj3bCtofdPK2jy56lkO2x42PV
	 wHRT7+1ZZLlpoYzfBiz7CYXuJGB8scuMLidJMnb8=
Date: Fri, 27 Jun 2025 12:00:39 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Jacob Keller
Message-ID: <20250627-striped-angelic-goat-54fbb8@lemur>
References: <33626625-c359-486c-a263-8e6660abad10@intel.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <33626625-c359-486c-a263-8e6660abad10@intel.com>

On Thu, Jun 26, 2025 at 12:59:08PM -0700, Jacob Keller wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added, thanks.

-K
