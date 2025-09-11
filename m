Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFAE2E401
	for <keys@linux.kernel.org>; Thu, 11 Sep 2025 13:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757596543; cv=none; b=oLtMvMCqSeL7oQ+bmksMp2+t3+kxwWtOLLSPL9jlKu9IH0X8k+UTJVM43X24bW0vKOe3+6/gJY03NZGzdfgJZxT+j7bTy1GX7HwuB3t6za9Cuz9hRrXtPIEq/3KCK35mrGHBZTKnOmsyRqD2WSHv0dbrUUhsubSHhGVWP+pH2B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757596543; c=relaxed/simple;
	bh=xRJ863yqZtPWkMC9SvputvD9s3bQSwFXHp8nJyORjQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VQVd5GC9XOPTyafPyEmzCTV2DnZnHYuJeHqKL6dv1jCOzwz5Zn62hBT320lSvKMRqHzpmOjH8sLY6+uQk377Rkw5t0aA5OOoT3ZFB70kI4YVgmAmXFeLDovUooOp7Uoh9aEQAAMHuoM/Zh9hMFsJzW+2DRHBbcl0Z5vQLeJCrkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=lF9X0wP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="lF9X0wP0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF65C4CEF0;
	Thu, 11 Sep 2025 13:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1757596542;
	bh=xRJ863yqZtPWkMC9SvputvD9s3bQSwFXHp8nJyORjQQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lF9X0wP0iCJZM35dxtjArb7JkNen1Ha2YzfS7fPrSH6QV2ppsHRqUNQZ83BcCLEXV
	 DN/XAIMaiP1j8yZFeGOyJwCB/t7XzVIkyDhFUihH6uGDrsqQHPdJs1+o8fGuEoIwim
	 PZvTJXL9lBoKPUBquvlObZ1Yvf7mbT300bGEyOqw=
Date: Thu, 11 Sep 2025 09:15:41 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Anand Suveer Jain <asj@u.nus.edu>
Cc: keys@linux.kernel.org, asj@kernel.org
Subject: Re: Updated key for myself 4993D59F932C2921
Message-ID: <20250911-cherry-chinchilla-of-gaiety-1ad84d@lemur>
References: <68b0d14a-0a6c-4975-817d-80f4d40ecec6@u.nus.edu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <68b0d14a-0a6c-4975-817d-80f4d40ecec6@u.nus.edu>

On Tue, Sep 09, 2025 at 05:46:43PM +0800, Anand Suveer Jain wrote:
> 
> Hi,
> 
> I have renewed my key and added the following email addresses:
> asj@kernel.org, asj@u.nus.edu.

Updated, thanks.

-K
